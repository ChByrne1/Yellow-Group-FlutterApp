// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annoucement_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnnoucementCallAdapter extends TypeAdapter<AnnoucementCall> {
  @override
  final typeId = 0;

  @override
  AnnoucementCall read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnnoucementCall(
      id: (fields[0] as num?)?.toInt(),
      title: fields[1] as String?,
      message: fields[2] as String?,
      datePosted: fields[3] as DateTime?,
      schoolId: (fields[4] as num?)?.toInt(),
      timestamp: (fields[5] as num?)?.toInt(),
      isDeleted: fields[6] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AnnoucementCall obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.message)
      ..writeByte(3)
      ..write(obj.datePosted)
      ..writeByte(4)
      ..write(obj.schoolId)
      ..writeByte(5)
      ..write(obj.timestamp)
      ..writeByte(6)
      ..write(obj.isDeleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnnoucementCallAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnoucementCallImpl _$$AnnoucementCallImplFromJson(
  Map<String, dynamic> json,
) => _$AnnoucementCallImpl(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  message: json['message'] as String?,
  datePosted:
      json['datePosted'] == null
          ? null
          : DateTime.parse(json['datePosted'] as String),
  schoolId: (json['schoolId'] as num?)?.toInt(),
  timestamp: (json['timestamp'] as num?)?.toInt(),
  isDeleted: json['isDeleted'] as bool?,
);

Map<String, dynamic> _$$AnnoucementCallImplToJson(
  _$AnnoucementCallImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'message': instance.message,
  'datePosted': instance.datePosted?.toIso8601String(),
  'schoolId': instance.schoolId,
  'timestamp': instance.timestamp,
  'isDeleted': instance.isDeleted,
};
