import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/overview.dart';
import 'overview.dart';


part 'annoucement_model.g.dart';
part 'annoucement_model.freezed.dart';


@freezed
class Annoucement with _$Annoucement {
  const factory Annoucement({
    int? id,
    int? addressId,
    int? schoolId,
    String? description,
    String? iconName,
  }) = _Annoucement;


  factory Annoucement.fromJson(Map<String, dynamic> json) =>
      _$AnnoucementFromJson(json);
}

Future<List<Annoucement>> fetchAnnoucements() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.getAnnouncements();

  if (response.isSuccessful && response.body != null) {
    List<Map<String, dynamic>>? jsonList = response.body;
    List<Annoucement> items = jsonList!
        .map((json) => Annoucement.fromJson(json as Map<String, dynamic>))
        .toList();
    return items;
  } else {
    return [];
  }
}