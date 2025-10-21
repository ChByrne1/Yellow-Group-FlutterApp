import 'package:freezed_annotation/freezed_annotation.dart';

part 'cafeteria_special.g.dart';

part 'cafeteria_special.freezed.dart';

enum DayOfWeek {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

@freezed
class CafeteriaSpecial with _$CafeteriaSpecial {
  const factory CafeteriaSpecial({
    required DayOfWeek dayOfTheWeek,
    required String imagePath,
  }) = _CafeteriaSpecial;

  // Create a Ingredient from JSON data
  factory CafeteriaSpecial.fromJson(Map<String, dynamic> json) =>
      _$CafeteriaSpecialFromJson(json);
}
