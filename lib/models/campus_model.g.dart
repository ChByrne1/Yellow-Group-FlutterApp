// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampusImpl _$$CampusImplFromJson(Map<String, dynamic> json) => _$CampusImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      addressId: (json['addressId'] as num?)?.toInt(),
      schoolId: (json['schoolId'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CampusImplToJson(_$CampusImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'addressId': instance.addressId,
      'schoolId': instance.schoolId,
      'description': instance.description,
    };
