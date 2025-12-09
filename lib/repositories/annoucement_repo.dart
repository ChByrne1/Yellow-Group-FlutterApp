import '../models/overview.dart';
import 'hive_interface.dart';

class AnnouncementRepo extends HiveBoxInterface<AnnoucementCall> {
  AnnouncementRepo()
      : super(
    boxName: "announcement",
    fromJson: (m) => AnnoucementCall.fromJson(m),
    toJson: (a) => a.toJson(),
    idOf: (a) => a.id!,
    versionOf: (a) => a.timestamp!,
    isDeletedOf: (a) => a.isDeleted!,
  );

  // Convenience wrappers
  Future<void> upsertAnnouncement(AnnoucementCall a) => upsert(a);
  Future<void> upsertManyAnnouncements(Iterable<AnnoucementCall> announcements) =>
      upsertMany(announcements);

  Future<AnnoucementCall?> byId(Object id, {bool includeDeleted = false}) =>
      get(id, includeDeleted: includeDeleted);

  Future<List<AnnoucementCall>> all({bool includeDeleted = false}) =>
      getAll(includeDeleted: includeDeleted);

  Stream<List<AnnoucementCall>> watch({bool includeDeleted = false}) =>
      watchAll(includeDeleted: includeDeleted);

  Future<void> tombstone(Object id, int version) => applyTombstone(id, version);
}
