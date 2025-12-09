import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import '../network/overview.dart';
import '../models/overview.dart';

part 'campus_model.g.dart';
part 'campus_model.freezed.dart';


@freezed
@HiveType(typeId: 2)
class CampusCall extends HiveObject with _$CampusCall {
  CampusCall._();

  factory CampusCall({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) int? addressId,
    @HiveField(3) int? schoolId,
    @HiveField(4) String? description,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  }) = _CampusCall;


  factory CampusCall.fromJson(Map<String, dynamic> json) =>
      _$CampusCallFromJson(json);

  bool get hasAddress => addressId != null;
  bool get hasSchool => schoolId != null;

  String get shortDescription =>
      (description == null || description!.isEmpty)
          ? 'No description'
          : description!;

  SchoolCall? get getSchool {
    if (schoolId == null) return null;
    final box = Hive.box<SchoolCall>('School');
    return box.values.firstWhere(
          (s) => s.id == schoolId,
      orElse: () => null as SchoolCall,
    );
  }

}


Future<List<CampusCall>> fetchCampuses() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll("Campus");

  if (response.isSuccessful && response.body != null) {
    final jsonList = response.body as List<dynamic>;
    final items = jsonList
        .map((json) => CampusCall.fromJson(json as Map<String, dynamic>))
        .toList();
    return items;
  } else {
    return [];
  }
}