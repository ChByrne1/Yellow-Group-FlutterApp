
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cafeteria_item.dart';



@freezed
class CafeteriaMenu with _$CafeteriaMenu  {
  const factory CafeteriaMenu (
      List<CafeteriaItem> menuItems,
      }) = _CafeteriaMenu ;

  // Create a Ingredient from JSON data
  factory CafeteriaMenu.fromJson(Map<String, dynamic> json) =>
      _$CafeteriaMenuFromJson(json);

}