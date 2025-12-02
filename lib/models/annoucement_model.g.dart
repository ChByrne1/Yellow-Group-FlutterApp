// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annoucement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnoucementImpl _$$AnnoucementImplFromJson(Map<String, dynamic> json) =>
    _$AnnoucementImpl(
      id: (json['id'] as num?)?.toInt(),
      addressId: (json['addressId'] as num?)?.toInt(),
      schoolId: (json['schoolId'] as num?)?.toInt(),
      description: json['description'] as String?,
      iconName: json['iconName'] as String?,
    );

Map<String, dynamic> _$$AnnoucementImplToJson(_$AnnoucementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'addressId': instance.addressId,
      'schoolId': instance.schoolId,
      'description': instance.description,
      'iconName': instance.iconName,
    };
