// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SchoolNewsAdapter extends TypeAdapter<SchoolNews> {
  @override
  final typeId = 1;

  @override
  SchoolNews read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SchoolNews(
      id: (fields[0] as num?)?.toInt(),
      schoolId: (fields[1] as num?)?.toInt(),
      headline: fields[2] as String?,
      content: fields[3] as String?,
      datePublished: fields[4] as DateTime?,
      author: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SchoolNews obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.schoolId)
      ..writeByte(2)
      ..write(obj.headline)
      ..writeByte(3)
      ..write(obj.content)
      ..writeByte(4)
      ..write(obj.datePublished)
      ..writeByte(5)
      ..write(obj.author);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SchoolNewsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
