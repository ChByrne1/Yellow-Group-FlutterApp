import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/overview.dart';
import 'overview.dart';

part 'campus_model.g.dart';
part 'campus_model.freezed.dart';


@freezed
class Campus with _$Campus {
  const factory Campus({
    int? id,
    String? name,
    int? addressId,
    int? schoolId,
    String? description,
  }) = _Campus;


  factory Campus.fromJson(Map<String, dynamic> json) =>
      _$CampusFromJson(json);
}

Future<List<Campus>> fetchCampuses() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.getCampus();

  if (response.isSuccessful && response.body != null) {
    List<Map<String, dynamic>>? jsonList = response.body;
    List<Campus> items = jsonList!
        .map((json) => Campus.fromJson(json as Map<String, dynamic>))
        .toList();
    return items;
  } else {
    return [];
  }
}