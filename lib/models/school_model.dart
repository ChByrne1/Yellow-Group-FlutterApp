import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import '../network/overview.dart';
import 'overview.dart';

part 'school_model.g.dart';

part 'school_model.freezed.dart';

@freezed
@HiveType(typeId: 5)
class SchoolCall extends HiveObject with _$SchoolCall {
  SchoolCall._();

  factory SchoolCall({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? website,
    @HiveField(4) String? phoneNumber,
    @HiveField(5) List<AnnoucementCall>? schoolAnnoucements,
    @HiveField(6) List<CampusCall>? campuses,
    @HiveField(7) List<EventCall>? schoolEvents,
    @HiveField(8) List<NewsCall>? schoolNews,
    @HiveField(9) int? timestamp,
    @HiveField(10) bool? isDeleted,
  }) = _SchoolCall;

  factory SchoolCall.fromJson(Map<String, dynamic> json) =>
      _$SchoolCallFromJson(json);
}

Future<List<SchoolCall>> fetchSchools() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll("School");

  if (response.isSuccessful && response.body != null) {
    List<Map<String, dynamic>>? jsonList = response.body;
    List<SchoolCall> items =
        jsonList!
            .map((json) => SchoolCall.fromJson(json))
            .toList();
    return items;
  } else {
    return [];
  }
}
