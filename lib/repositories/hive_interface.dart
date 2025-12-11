import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

/// Maps a model instance to a JSON map.
typedef ToJson<T> = Map<String, dynamic> Function(T);

/// Reconstructs a model instance from a JSON map.
typedef FromJson<T> = T Function(Map<String, dynamic> json);

/// Extracts the stable primary key from a model (will be normalized to String).
typedef IdOf<T> = Object Function(T value);

/// Extracts a monotonic version (e.g., ms since epoch) from a model.
/// Return 0 if unknown/null to avoid blocking initial writes.
typedef VersionOf<T> = int Function(T value);

/// Extracts soft-delete state from a model (true if isDeleted).
typedef IsDeletedOf<T> = bool Function(T value);

@immutable
class _CacheEnvelope {
  final int version; // monotonic (e.g., API ms timestamp)
  final bool isDeleted;
  final String lastUpdatedLocalIso; // ISO8601 string
  final Map<String, dynamic>? data; // may be null for tombstones

  const _CacheEnvelope({
    required this.version,
    required this.isDeleted,
    required this.lastUpdatedLocalIso,
    required this.data,
  });

  Map<String, dynamic> toMap() => {
    'version': version,
    'isDeleted': isDeleted,
    'lastUpdatedLocalIso': lastUpdatedLocalIso,
    'data': data,
  };

  static _CacheEnvelope fromMap(Map<String, dynamic> m) => _CacheEnvelope(
    version: (m['version'] as num?)?.toInt() ?? 0,
    isDeleted: (m['isDeleted'] as bool?) ?? false,
    lastUpdatedLocalIso:
    (m['lastUpdatedLocalIso'] as String?) ??
        DateTime.now().toUtc().toIso8601String(),
    data: (m['data'] as Map?)?.cast<String, dynamic>(),
  );
}

/// Version- and soft-delete aware Hive CE base repo.
/// - Keys are normalized to String (so int and string IDs both work).
/// - Values are JSON strings wrapping a small envelope (version/isDeleted/lastUpdated/data).
abstract class HiveBoxInterface<T> {
  final String boxName;

  final FromJson<T> fromJson;
  final ToJson<T> toJson;
  final IdOf<T> idOf;
  final VersionOf<T> versionOf;
  final IsDeletedOf<T> isDeletedOf;

  late final Box<String> _box;
  late final Future<void> ready;

  HiveBoxInterface({
    required this.boxName,
    required this.fromJson,
    required this.toJson,
    required this.idOf,
    required this.versionOf,
    required this.isDeletedOf,
  }) {
    ready = _initBox();
  }

  Future<void> _initBox() async {
    await Hive.initFlutter();

    // Per-box encryption key stored in secure storage.
    const storage = FlutterSecureStorage();
    final keyName = 'hive_key_$boxName';
    var base64Key = await storage.read(key: keyName);
    if (base64Key == null) {
      final key = Hive.generateSecureKey(); // 256-bit
      base64Key = base64Encode(key);
      await storage.write(key: keyName, value: base64Key);
    }
    final key = base64Decode(base64Key);

    _box = await Hive.openBox<String>(
      boxName,
      encryptionCipher: HiveAesCipher(key),
    );
  }

  // ------------------------ helpers ------------------------

  String _normalizeKey(Object id) => id.toString();

  _CacheEnvelope? _decode(String? s) {
    if (s == null) return null;
    final map = jsonDecode(s) as Map<String, dynamic>;
    return _CacheEnvelope.fromMap(map);
  }

  String _encode(_CacheEnvelope env) => jsonEncode(env.toMap());

  // ------------------------ write paths ------------------------

  /// Upsert a single model instance.
  /// - If incoming is tombstoned (isDeleted==true), writes a tombstone if version is newer.
  /// - Otherwise writes data iff incoming.version > existing.version.
  Future<void> upsert(T value) async {
    await ready;

    final id = _normalizeKey(idOf(value));
    final incomingVersion = versionOf(value);
    final incomingDeleted = isDeletedOf(value);

    final existing = _decode(_box.get(id));
    final existingVersion = existing?.version ?? -1;

    if (incomingVersion <= existingVersion) {
      // Ignore stale data (incl. a stale tombstone)
      return;
    }

    if (incomingDeleted) {
      // Write a tombstone with the newer version
      final env = _CacheEnvelope(
        version: incomingVersion,
        isDeleted: true,
        lastUpdatedLocalIso: DateTime.now().toUtc().toIso8601String(),
        data: existing?.data, // keep prior data if you want; or null to shrink
      );
      await _box.put(id, _encode(env));
      return;
    }

    // Normal upsert
    final env = _CacheEnvelope(
      version: incomingVersion,
      isDeleted: false,
      lastUpdatedLocalIso: DateTime.now().toUtc().toIso8601String(),
      data: toJson(value),
    );
    await _box.put(id, _encode(env));
  }

  /// Upsert many items efficiently (coalesces writes).
  Future<void> upsertMany(Iterable<T> values) async {
    await ready;

    final updates = <String, String>{};
    for (final v in values) {
      final id = _normalizeKey(idOf(v));
      final incomingVersion = versionOf(v);
      final incomingDeleted = isDeletedOf(v);

      final existing = _decode(_box.get(id));
      final existingVersion = existing?.version ?? -1;

      if (incomingVersion <= existingVersion) {
        continue; // stale
      }

      final env = _CacheEnvelope(
        version: incomingVersion,
        isDeleted: incomingDeleted,
        lastUpdatedLocalIso: DateTime.now().toUtc().toIso8601String(),
        data: incomingDeleted ? (existing?.data) : toJson(v),
      );
      updates[id] = _encode(env);
    }

    if (updates.isNotEmpty) {
      await _box.putAll(updates);
    }
  }

  /// Apply a tombstone (soft delete) when you receive a delete event with a version.
  Future<void> applyTombstone(
      Object id,
      int version, {
        Map<String, dynamic>? keepData,
      }) async {
    await ready;
    final key = _normalizeKey(id);
    final existing = _decode(_box.get(key));
    final existingVersion = existing?.version ?? -1;
    if (version <= existingVersion) return;

    final env = _CacheEnvelope(
      version: version,
      isDeleted: true,
      lastUpdatedLocalIso: DateTime.now().toUtc().toIso8601String(),
      data: keepData ?? existing?.data,
    );
    await _box.put(key, _encode(env));
  }

  /// Hard-remove from local cache (use carefully; tombstones are safer for sync).
  Future<void> purge(Object id) async {
    await ready;
    await _box.delete(_normalizeKey(id));
  }

  Future<void> clearAll() async {
    await ready;
    await _box.clear();
  }

  Future<void> close() async {
    await ready;
    await _box.compact();
    await _box.close();
  }

  // ------------------------ read paths ------------------------

  Future<T?> get(Object id, {bool includeDeleted = false}) async {
    await ready;
    final env = _decode(_box.get(_normalizeKey(id)));
    if (env == null) return null;
    if (!includeDeleted && env.isDeleted) return null;
    final data = env.data;
    if (data == null) return null; // tombstone without data
    return fromJson(data);
  }

  Future<List<T>> getAll({bool includeDeleted = false}) async {
    await ready;
    final out = <T>[];
    for (final s in _box.values) {
      final env = _decode(s);
      if (env == null) continue;
      if (!includeDeleted && env.isDeleted) continue;
      if (env.data == null) continue;
      out.add(fromJson(env.data!));
    }
    return out;
  }

  /// A stream of the full (filtered) collection. Emits on any box change.
  Stream<List<T>> watchAll({bool includeDeleted = false}) async* {
    await ready;
    // Seed
    yield await getAll(includeDeleted: includeDeleted);

    // React to changes
    yield* _box.watch().asyncMap((_) => getAll(includeDeleted: includeDeleted));
  }

  /// Raw access to envelopes (debugging/metrics).
  Future<_CacheEnvelope?> debugGetEnvelope(Object id) async {
    await ready;
    return _decode(_box.get(_normalizeKey(id)));
  }
}
