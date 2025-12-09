// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EventCallAdapter extends TypeAdapter<EventCall> {
  @override
  final typeId = 3;

  @override
  EventCall read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EventCall(
      id: (fields[0] as num?)?.toInt(),
      title: fields[1] as String?,
      description: fields[2] as String?,
      start: fields[3] as DateTime?,
      end: fields[4] as DateTime?,
      campusId: (fields[5] as num?)?.toInt(),
      location: fields[6] as String?,
      timestamp: (fields[7] as num?)?.toInt(),
      isDeleted: fields[8] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, EventCall obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.start)
      ..writeByte(4)
      ..write(obj.end)
      ..writeByte(5)
      ..write(obj.campusId)
      ..writeByte(6)
      ..write(obj.location)
      ..writeByte(7)
      ..write(obj.timestamp)
      ..writeByte(8)
      ..write(obj.isDeleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventCallAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventCallImpl _$$EventCallImplFromJson(
  Map<String, dynamic> json,
) => _$EventCallImpl(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  start: json['start'] == null ? null : DateTime.parse(json['start'] as String),
  end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
  campusId: (json['campusId'] as num?)?.toInt(),
  location: json['location'] as String?,
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isDeleted: json['isDeleted'] as bool?,
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
      'isDeleted': instance.isDeleted,
    };
