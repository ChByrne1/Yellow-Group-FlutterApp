// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreferenceImpl _$$UserPreferenceImplFromJson(Map<String, dynamic> json) =>
    _$UserPreferenceImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: json['userId'] as String? ?? '',
    );

Map<String, dynamic> _$$UserPreferenceImplToJson(
  _$UserPreferenceImpl instance,
) => <String, dynamic>{'id': instance.id, 'userId': instance.userId};
