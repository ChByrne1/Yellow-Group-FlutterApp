// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafeteria_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CafeteriaItemAdapter extends TypeAdapter<CafeteriaItem> {
  @override
  final typeId = 2;

  @override
  CafeteriaItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CafeteriaItem(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      description: fields[2] as String,
      price: (fields[3] as num).toDouble(),
      category: fields[4] as String,
      isAvailable: fields[5] == null ? true : fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CafeteriaItem obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.isAvailable);
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
