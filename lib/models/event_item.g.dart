// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventCallImpl _$$EventCallImplFromJson(Map<String, dynamic> json) =>
    _$EventCallImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      campusId: (json['campusId'] as num?)?.toInt(),
      location: json['location'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EventCallImplToJson(_$EventCallImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'campusId': instance.campusId,
      'location': instance.location,
      'timestamp': instance.timestamp,
    };

_$EventEditImpl _$$EventEditImplFromJson(Map<String, dynamic> json) =>
    _$EventEditImpl(
      id: (json['Id'] as num?)?.toInt(),
      title: json['Title'] as String,
      description: json['Description'] as String,
      start: json['Start'] == null
          ? null
          : DateTime.parse(json['Start'] as String),
      end: json['End'] == null ? null : DateTime.parse(json['End'] as String),
      campusId: (json['CampusId'] as num?)?.toInt(),
      location: json['Location'] as String? ?? "NoWhere",
      timestamp: (json['Timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EventEditImplToJson(_$EventEditImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Title': instance.title,
      'Description': instance.description,
      'Start': instance.start?.toIso8601String(),
      'End': instance.end?.toIso8601String(),
      'CampusId': instance.campusId,
      'Location': instance.location,
      'Timestamp': instance.timestamp,
    };

_$EventNewImpl _$$EventNewImplFromJson(Map<String, dynamic> json) =>
    _$EventNewImpl(
      title: json['Title'] as String,
      description: json['Description'] as String,
      start: json['Start'] == null
          ? null
          : DateTime.parse(json['Start'] as String),
      end: json['End'] == null ? null : DateTime.parse(json['End'] as String),
      campusId: (json['CampusId'] as num?)?.toInt(),
      location: json['Location'] as String? ?? "NoWhere",
    );

Map<String, dynamic> _$$EventNewImplToJson(_$EventNewImpl instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Description': instance.description,
      'Start': instance.start?.toIso8601String(),
      'End': instance.end?.toIso8601String(),
      'CampusId': instance.campusId,
      'Location': instance.location,
    };
