import '../models/overview.dart';
import 'hive_interface.dart';



/// Version- and soft-delete–aware local repo for School.
/// - Key (String): School.id  (normalized from API int id)
/// - Version:      School.timestamp (UNIX ms from API)
/// - Soft delete:  School.isDeleted
class SchoolRepo extends HiveBoxInterface<SchoolCall> {
  SchoolRepo()
      : super(
    boxName: 'School', // consider suffixing env, e.g. 'school_prod'
    fromJson: (m) => SchoolCall.fromJson(m),
    toJson: (s) => s.toJson(),
    idOf: (s) => s.id!, // String local key
    versionOf: (s) => s.timestamp!, // int (ms)
    isDeletedOf: (s) => s.isDeleted!, // bool
  );

  // Convenience wrappers
  Future<void> upsertSchool(SchoolCall s) => upsert(s);
  Future<void> upsertManySchools(Iterable<SchoolCall> schools) =>
      upsertMany(schools);

  Future<SchoolCall?> byId(Object id, {bool includeDeleted = false}) =>
      get(id, includeDeleted: includeDeleted);

  Future<List<SchoolCall>> all({bool includeDeleted = false}) =>
      getAll(includeDeleted: includeDeleted);

  Stream<List<SchoolCall>> watch({bool includeDeleted = false}) =>
      watchAll(includeDeleted: includeDeleted);

  Future<void> tombstone(Object id, int version) => applyTombstone(id, version);
}
