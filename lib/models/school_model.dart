import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/overview.dart';
import 'overview.dart';

part 'school_model.g.dart';
part 'school_model.freezed.dart';

@freezed
class School with _$School {
  const factory School({
    int? id,
    String? name,
    String? email,
    String? website,
    String? phoneNumber,
    List<Annoucement>? schoolAnnoucements,
    List<Campus>? campuses,
    List<EventCall>? schoolEvents,
    List<SchoolNews>? schoolNews
  }) = _School;


  factory School.fromJson(Map<String, dynamic> json) =>
      _$SchoolFromJson(json);
}

Future<List<School>> fetchSchools() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.getSchool();

  if (response.isSuccessful && response.body != null) {
    List<Map<String, dynamic>>? jsonList = response.body;
    List<School> items = jsonList!
        .map((json) => School.fromJson(json as Map<String, dynamic>))
        .toList();
    return items;
  } else {
    return [];
  }
}