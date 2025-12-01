// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolImpl _$$SchoolImplFromJson(Map<String, dynamic> json) => _$SchoolImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      schoolAnnoucements: (json['schoolAnnoucements'] as List<dynamic>?)
          ?.map((e) => Annoucement.fromJson(e as Map<String, dynamic>))
          .toList(),
      campuses: (json['campuses'] as List<dynamic>?)
          ?.map((e) => Campus.fromJson(e as Map<String, dynamic>))
          .toList(),
      schoolEvents: (json['schoolEvents'] as List<dynamic>?)
          ?.map((e) => EventCall.fromJson(e as Map<String, dynamic>))
          .toList(),
      schoolNews: (json['schoolNews'] as List<dynamic>?)
          ?.map((e) => SchoolNews.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SchoolImplToJson(_$SchoolImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'website': instance.website,
      'phoneNumber': instance.phoneNumber,
      'schoolAnnoucements': instance.schoolAnnoucements,
      'campuses': instance.campuses,
      'schoolEvents': instance.schoolEvents,
      'schoolNews': instance.schoolNews,
    };
