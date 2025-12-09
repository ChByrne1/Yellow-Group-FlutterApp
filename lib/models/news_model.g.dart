// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsCallAdapter extends TypeAdapter<NewsCall> {
  @override
  final typeId = 4;

  @override
  NewsCall read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsCall(
      id: (fields[0] as num?)?.toInt(),
      schoolId: (fields[1] as num?)?.toInt(),
      headline: fields[2] as String?,
      content: fields[3] as String?,
      datePublished: fields[4] as DateTime?,
      author: fields[5] as String?,
      timestamp: (fields[6] as num?)?.toInt(),
      isDeleted: fields[7] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, NewsCall obj) {
    writer
      ..writeByte(8)
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
      ..write(obj.author)
      ..writeByte(6)
      ..write(obj.timestamp)
      ..writeByte(7)
      ..write(obj.isDeleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsCallAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsCallImpl _$$NewsCallImplFromJson(Map<String, dynamic> json) =>
    _$NewsCallImpl(
      id: (json['id'] as num?)?.toInt(),
      schoolId: (json['schoolId'] as num?)?.toInt(),
      headline: json['headline'] as String?,
      content: json['content'] as String?,
      datePublished:
          json['datePublished'] == null
              ? null
              : DateTime.parse(json['datePublished'] as String),
      author: json['author'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$NewsCallImplToJson(_$NewsCallImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'headline': instance.headline,
      'content': instance.content,
      'datePublished': instance.datePublished?.toIso8601String(),
      'author': instance.author,
      'timestamp': instance.timestamp,
      'isDeleted': instance.isDeleted,
    };
