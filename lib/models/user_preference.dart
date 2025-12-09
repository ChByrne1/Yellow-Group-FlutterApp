import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/overview.dart';

part 'user_preference.freezed.dart';
part 'user_preference.g.dart';

@freezed
class UserPreference with _$UserPreference {
  const factory UserPreference({
    int? id,
    @Default('') String userId,
  }) = _UserPreference;

  factory UserPreference.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceFromJson(json);
}

Future<List<UserPreference>> fetchUserPreferences() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll('UserPreference');

  if (response.isSuccessful && response.body != null) {
    final jsonList = response.body as List<dynamic>;
    final items = jsonList
        .map((json) => UserPreference.fromJson(json as Map<String, dynamic>))
        .toList();
    return items;
  } else {
    return [];
  }
}