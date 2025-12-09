// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cafeteria_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CafeteriaMenuImpl _$$CafeteriaMenuImplFromJson(Map<String, dynamic> json) =>
    _$CafeteriaMenuImpl(
      menuItems:
          (json['menuItems'] as List<dynamic>?)
              ?.map((e) => CafeteriaItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CafeteriaMenuImplToJson(_$CafeteriaMenuImpl instance) =>
    <String, dynamic>{'menuItems': instance.menuItems};
