import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/overview.dart';

part 'cafeteria_special.g.dart';

part 'cafeteria_special.freezed.dart';

enum DayOfWeek {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

@freezed
class CafeteriaSpecial with _$CafeteriaSpecial {
  const CafeteriaSpecial._();
  const factory CafeteriaSpecial({
    required DayOfWeek dayOfTheWeek,
    required String imagePath,
  }) = _CafeteriaSpecial;

  factory CafeteriaSpecial.fromJson(Map<String, dynamic> json) =>
      _$CafeteriaSpecialFromJson(json);
}


Future<CafeteriaSpecial?> fetchCafeteriaSpecials() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll('Cafeteria/Special');

  if (response.isSuccessful && response.body != null) {
    final json = response.body as Map<String, dynamic>;
    return CafeteriaSpecial.fromJson(json);
  } else {
    return null;
  }
}

Future<CafeteriaSpecial?> fetchTodaySpecial(ApiClient apiClient) async {
  final response = await apiClient.school.callAll('Special');

  if (response.isSuccessful && response.body != null && response.body!.isNotEmpty) {
    final Map<String, dynamic> json = response.body!.first;
    return CafeteriaSpecial.fromJson(json);
  }
  return null;
}