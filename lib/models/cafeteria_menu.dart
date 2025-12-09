import 'package:freezed_annotation/freezed_annotation.dart';
import 'cafeteria_item.dart';

part 'cafeteria_menu.g.dart';

part 'cafeteria_menu.freezed.dart';

@freezed
class CafeteriaMenu with _$CafeteriaMenu {
  const factory CafeteriaMenu({@Default([]) List<CafeteriaItem> menuItems}) =
  _CafeteriaMenu;

  // Create a Ingredient from JSON data
  factory CafeteriaMenu.fromJson(Map<String, dynamic> json) =>
      _$CafeteriaMenuFromJson(json);
}
