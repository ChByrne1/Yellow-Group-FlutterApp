// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolNewsImpl _$$SchoolNewsImplFromJson(Map<String, dynamic> json) =>
    _$SchoolNewsImpl(
      id: (json['id'] as num?)?.toInt(),
      SchoolId: (json['SchoolId'] as num?)?.toInt(),
      Headline: json['Headline'] as String?,
      Content: json['Content'] as String?,
      DatePublished: json['DatePublished'] == null
          ? null
          : DateTime.parse(json['DatePublished'] as String),
      Author: json['Author'] as String?,
    );

Map<String, dynamic> _$$SchoolNewsImplToJson(_$SchoolNewsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'SchoolId': instance.SchoolId,
      'Headline': instance.Headline,
      'Content': instance.Content,
      'DatePublished': instance.DatePublished?.toIso8601String(),
      'Author': instance.Author,
    };
