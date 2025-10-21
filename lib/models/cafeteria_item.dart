import 'package:freezed_annotation/freezed_annotation.dart';


part 'cafeteria_item.g.dart';
part 'cafeteria_item.freezed.dart';

enum MenuCategory {
  side,
  drink,
  appetizer
}


@freezed
class CafeteriaItem with _$CafeteriaItem  {
  const factory CafeteriaItem (
      {int? id,
        String? Title,
        String? Description,
        DateTime? Start,
        DateTime? End,
        int? CampusId,
        String? Location
      }) = _CafeteriaItem ;

  // Create a Ingredient from JSON data
  factory CafeteriaItem.fromJson(Map<String, dynamic> json) =>
      _$CafeteriaItemFromJson(json);

}