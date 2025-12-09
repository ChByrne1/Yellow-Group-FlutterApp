// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campus_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CampusCallAdapter extends TypeAdapter<CampusCall> {
  @override
  final typeId = 2;

  @override
  CampusCall read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CampusCall(
      id: (fields[0] as num?)?.toInt(),
      name: fields[1] as String?,
      addressId: (fields[2] as num?)?.toInt(),
      schoolId: (fields[3] as num?)?.toInt(),
      description: fields[4] as String?,
      timestamp: (fields[5] as num?)?.toInt(),
      isDeleted: fields[6] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, CampusCall obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.addressId)
      ..writeByte(3)
      ..write(obj.schoolId)
      ..writeByte(4)
      ..write(obj.description)
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
      other is CampusCallAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampusCallImpl _$$CampusCallImplFromJson(Map<String, dynamic> json) =>
    _$CampusCallImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      addressId: (json['addressId'] as num?)?.toInt(),
      schoolId: (json['schoolId'] as num?)?.toInt(),
      description: json['description'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$CampusCallImplToJson(_$CampusCallImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'addressId': instance.addressId,
      'schoolId': instance.schoolId,
      'description': instance.description,
      'timestamp': instance.timestamp,
      'isDeleted': instance.isDeleted,
    };
