// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EventItemAdapter extends TypeAdapter<EventItem> {
  @override
  final typeId = 0;

  @override
  EventItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EventItem(
      id: (fields[0] as num).toInt(),
      title: fields[1] as String,
      description: fields[2] as String,
      start: fields[3] as DateTime,
      end: fields[4] as DateTime,
      campusId: (fields[5] as num).toInt(),
      location: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EventItem obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.location);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
