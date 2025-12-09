// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SchoolCallAdapter extends TypeAdapter<SchoolCall> {
  @override
  final typeId = 5;

  @override
  SchoolCall read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SchoolCall(
      id: (fields[0] as num?)?.toInt(),
      name: fields[1] as String?,
      email: fields[2] as String?,
      website: fields[3] as String?,
      phoneNumber: fields[4] as String?,
      schoolAnnoucements: (fields[5] as List?)?.cast<AnnoucementCall>(),
      campuses: (fields[6] as List?)?.cast<CampusCall>(),
      schoolEvents: (fields[7] as List?)?.cast<EventCall>(),
      schoolNews: (fields[8] as List?)?.cast<NewsCall>(),
      timestamp: (fields[9] as num?)?.toInt(),
      isDeleted: fields[10] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, SchoolCall obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.website)
      ..writeByte(4)
      ..write(obj.phoneNumber)
      ..writeByte(5)
      ..write(obj.schoolAnnoucements)
      ..writeByte(6)
      ..write(obj.campuses)
      ..writeByte(7)
      ..write(obj.schoolEvents)
      ..writeByte(8)
      ..write(obj.schoolNews)
      ..writeByte(9)
      ..write(obj.timestamp)
      ..writeByte(10)
      ..write(obj.isDeleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchoolCallAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolCallImpl _$$SchoolCallImplFromJson(Map<String, dynamic> json) =>
    _$SchoolCallImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      schoolAnnoucements:
          (json['schoolAnnoucements'] as List<dynamic>?)
              ?.map((e) => AnnoucementCall.fromJson(e as Map<String, dynamic>))
              .toList(),
      campuses:
          (json['campuses'] as List<dynamic>?)
              ?.map((e) => CampusCall.fromJson(e as Map<String, dynamic>))
              .toList(),
      schoolEvents:
          (json['schoolEvents'] as List<dynamic>?)
              ?.map((e) => EventCall.fromJson(e as Map<String, dynamic>))
              .toList(),
      schoolNews:
          (json['schoolNews'] as List<dynamic>?)
              ?.map((e) => NewsCall.fromJson(e as Map<String, dynamic>))
              .toList(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$SchoolCallImplToJson(_$SchoolCallImpl instance) =>
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
      'timestamp': instance.timestamp,
      'isDeleted': instance.isDeleted,
    };
