import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/overview.dart';
import '../network/overview.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    int? id,
    @Default('') String userId,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);



}

Future<List<UserProfile>> fetchUserProfiles() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll('User/UserProfile');

  if (response.isSuccessful && response.body != null) {
    final jsonList = response.body as List<dynamic>;
    final items = jsonList
        .map((json) => UserProfile.fromJson(json as Map<String, dynamic>))
        .toList();
    return items;
  } else {
    return [];
  }
}