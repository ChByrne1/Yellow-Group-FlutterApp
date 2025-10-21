// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventItemImpl _$$EventItemImplFromJson(Map<String, dynamic> json) =>
    _$EventItemImpl(
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

Map<String, dynamic> _$$EventItemImplToJson(_$EventItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Title': instance.Title,
      'Description': instance.Description,
      'Start': instance.Start?.toIso8601String(),
      'End': instance.End?.toIso8601String(),
      'CampusId': instance.CampusId,
      'Location': instance.Location,
    };
