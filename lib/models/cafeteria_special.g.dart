// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafeteria_special.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CafeteriaSpecialImpl _$$CafeteriaSpecialImplFromJson(
        Map<String, dynamic> json) =>
    _$CafeteriaSpecialImpl(
      dayOfTheWeek: $enumDecode(_$DayOfWeekEnumMap, json['dayOfTheWeek']),
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$CafeteriaSpecialImplToJson(
        _$CafeteriaSpecialImpl instance) =>
    <String, dynamic>{
      'dayOfTheWeek': _$DayOfWeekEnumMap[instance.dayOfTheWeek]!,
      'imagePath': instance.imagePath,
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.Monday: 'Monday',
  DayOfWeek.Tuesday: 'Tuesday',
  DayOfWeek.Wednesday: 'Wednesday',
  DayOfWeek.Thursday: 'Thursday',
  DayOfWeek.Friday: 'Friday',
  DayOfWeek.Saturday: 'Saturday',
  DayOfWeek.Sunday: 'Sunday',
};
