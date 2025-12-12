import 'package:chopper/chopper.dart';
import '../models/overview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/overview.dart';
import 'apiclient_provider.dart';


/*
/// Repo DI
final schoolRepoProvider = Provider<SchoolRepo>((ref) => SchoolRepo());

/// Live stream of schools from the local cache (excludes soft-deleted)
final schoolsStreamProvider = StreamProvider.autoDispose<List<SchoolCall>>((ref) {
  final repo = ref.watch(schoolRepoProvider);
  return repo.watch(); // emits immediately with current cache, then on changes
});

/// Cache-first read with background refresh.
/// UI can `watch` this to get an immediate list from cache while a refresh runs.
/// The cache itself updates via the stream when fresher data is written.
final schoolsCacheFirstProvider = FutureProvider.autoDispose<List<SchoolCall>>((
  ref,
) async {
  final repo = ref.watch(schoolRepoProvider);
  final api = ref.watch(apiClientProvider);

  // 1) Return whatever is in cache right now (fast/offline)
  final cached = await repo.all();

  // 2) Kick a background refresh (don't block UI)
  //    Ignore errors so offline stays graceful.
  () async {
    try {
      // Call your Chopper service. Adjust if your method name differs.
      final Response resp = await api.school.callAll("School");

      // Expecting a JSON array of schools.
      final body = resp.body;
      if (body is List) {
        final fresh =
            body
                .whereType<Map<String, dynamic>>() // defensive
                .map((m) => SchoolCall.fromJson(m))
                .toList();

        // Write only newer versions; stream provider will emit if anything changed.
        await repo.upsertManySchools(fresh);
      } else if (body is List<dynamic>) {
        final fresh =
            body
                .map((e) => e as Map<String, dynamic>)
                .map(SchoolCall.fromJson)
                .toList();
        await repo.upsertManySchools(fresh);
      }
    } catch (_) {
      // swallow; keep cached
    }
  }();

  return cached;
});

/// A simple "refresh" action you can call from a pull-to-refresh or FAB.
/// It performs a network fetch and updates the cache (which will update the stream).
final refreshSchoolsProvider = FutureProvider.autoDispose<void>((ref) async {
  final repo = ref.watch(schoolRepoProvider);
  final api = ref.watch(apiClientProvider);

  try {
    final Response resp = await api.school.callAll("School");
    final body = resp.body;
    if (body is List) {
      final fresh =
          body.whereType<Map<String, dynamic>>().map(SchoolCall.fromJson).toList();
      await repo.upsertManySchools(fresh);
    } else if (body is List<dynamic>) {
      final fresh =
          body
              .map((e) => e as Map<String, dynamic>)
              .map(SchoolCall.fromJson)
              .toList();
      await repo.upsertManySchools(fresh);
    }
  } catch (_) {
    // optionally rethrow or handle
  }
});
*/