// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafeteria_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CafeteriaItemAdapter extends TypeAdapter<CafeteriaItem> {
  @override
  final typeId = 6;

  @override
  CafeteriaItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CafeteriaItem(
      id: (fields[0] as num?)?.toInt(),
      category: (fields[1] as num?)?.toInt(),
      name: fields[2] as String?,
      description: fields[3] as String?,
      iconName: fields[4] as String?,
      timestamp: (fields[5] as num?)?.toInt(),
      isDeleted: fields[6] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, CafeteriaItem obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.iconName)
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
      other is CafeteriaItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CafeteriaItemImpl _$$CafeteriaItemImplFromJson(Map<String, dynamic> json) =>
    _$CafeteriaItemImpl(
      id: (json['id'] as num?)?.toInt(),
      category: (json['category'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      iconName: json['iconName'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$CafeteriaItemImplToJson(_$CafeteriaItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'description': instance.description,
      'iconName': instance.iconName,
      'timestamp': instance.timestamp,
      'isDeleted': instance.isDeleted,
    };
