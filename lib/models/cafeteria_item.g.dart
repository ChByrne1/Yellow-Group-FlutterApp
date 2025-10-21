// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafeteria_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CafeteriaItemImpl _$$CafeteriaItemImplFromJson(Map<String, dynamic> json) =>
    _$CafeteriaItemImpl(
      id: (json['id'] as num?)?.toInt(),
      Title: json['Title'] as String?,
      Description: json['Description'] as String?,
      Start: json['Start'] == null
          ? null
          : DateTime.parse(json['Start'] as String),
      End: json['End'] == null ? null : DateTime.parse(json['End'] as String),
      CampusId: (json['CampusId'] as num?)?.toInt(),
      Location: json['Location'] as String?,
    );

Map<String, dynamic> _$$CafeteriaItemImplToJson(_$CafeteriaItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Title': instance.Title,
      'Description': instance.Description,
      'Start': instance.Start?.toIso8601String(),
      'End': instance.End?.toIso8601String(),
      'CampusId': instance.CampusId,
      'Location': instance.Location,
    };
