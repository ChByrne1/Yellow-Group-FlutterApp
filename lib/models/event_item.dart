

import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_item.g.dart';
import 'event_item.freezed.dart'

@freezed
class EventItem with _$EventItem  {
  const factory EventItem (
      {int? id,
        String? Title,
        String? Description,
        DateTime? Start,
        DateTime? End,
        int? CampusId,
        String? Location
      }) = _EventItem ;

  // Create a Ingredient from JSON data
  factory EventItem.fromJson(Map<String, dynamic> json) =>
      _$EventItemFromJson(json);

}