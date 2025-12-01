import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_item.g.dart';

part 'event_item.freezed.dart';

@freezed
class EventCall with _$EventCall {
  const factory EventCall({
    int? id,
    String? title,
    String? description,
    DateTime? start,
    DateTime? end,
    int? campusId,
    String? location,
    int? timestamp
  }) = _EventCall;
  // Create a Ingredient from JSON data
  factory EventCall.fromJson(Map<String, dynamic> json) =>
      _$EventCallFromJson(json);
}

@freezed
class EventEdit with _$EventEdit {
  const factory EventEdit({
    @JsonKey(name: 'Id')
    int? id,
    @JsonKey(name: 'Title')
    required
    String title,
    @JsonKey(name: 'Description')
    required
    String description,
    @JsonKey(name: 'Start')
    DateTime? start,
    @JsonKey(name: 'End')
    DateTime? end,
    @JsonKey(name: 'CampusId')
    int? campusId,
    @JsonKey(name: 'Location')
    @Default("NoWhere")
    String location,
    @JsonKey(name: "Timestamp")
    int? timestamp
  }) = _EventEdit;
  // Create a Ingredient from JSON data
  factory EventEdit.fromJson(Map<String, dynamic> json) =>
      _$EventEditFromJson(json);
}

@freezed
class EventNew with _$EventNew {
  const factory EventNew({
    @JsonKey(name: 'Title')
    required
    String title,
    @JsonKey(name: 'Description')
    required
    String description,
    @JsonKey(name: 'Start')
    DateTime? start,
    @JsonKey(name: 'End')
    DateTime? end,
    @JsonKey(name: 'CampusId')
    int? campusId,
    @JsonKey(name: 'Location')
    @Default("NoWhere")
    String location,
  }) = _EventNew;
  // Create a Ingredient from JSON data
  factory EventNew.fromJson(Map<String, dynamic> json) =>
      _$EventNewFromJson(json);
}