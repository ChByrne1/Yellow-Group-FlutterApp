import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:yellow_group_flutterapp/models/campus_model.dart';
import '../network/overview.dart';

part 'event_item.g.dart';

part 'event_item.freezed.dart';

//https://stackoverflow.com/questions/64485599/how-can-i-add-a-custom-function-inside-the-class-annotated-with-the-freezed-li

@freezed
@HiveType(typeId: 3)
class EventCall extends HiveObject with _$EventCall {
  EventCall._();

  factory EventCall({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? description,
    @HiveField(3) DateTime? start,
    @HiveField(4) DateTime? end,
    @HiveField(5) int? campusId,
    @HiveField(6) String? location,
    @HiveField(7) int? timestamp,
    @HiveField(8) bool? isDeleted,
  }) = _EventCall;

  factory EventCall.fromJson(Map<String, dynamic> json) =>
      _$EventCallFromJson(json);

  //https://medium.com/@ankitsaroj.ankit94555/mastering-getters-and-setters-in-flutter-write-cleaner-safer-and-smarter-code-5ac437ceb6fe
  bool get isOngoing {
    final now = DateTime.now();
    return now.isAfter(start!) && now.isBefore(end!);
  }

  // Helper method to check if event is upcoming
  bool get isUpcoming => start != null && DateTime.now().isBefore(start!);

  // Helper method to check if event is past
  bool get isPast => end != null && DateTime.now().isAfter(end!);

  // Get event duration
  Duration get duration =>
      (start != null && end != null) ? end!.difference(start!) : Duration.zero;

  CampusCall? get getSchool {
    if (campusId == null) return null;
    final box = Hive.box<CampusCall>('Campus');
    return box.values.firstWhere(
      (s) => s.id == campusId,
      orElse: () => null as CampusCall,
    );
  }
}

Future<List<EventCall>> fetchAllEvents() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll("Event");

  if (response.isSuccessful && response.body != null) {
    final body = response.body;
    final jsonList = body as List<dynamic>;
    final items =
        jsonList
            .map((json) => EventCall.fromJson(json as Map<String, dynamic>))
            .toList();
    return items;
  } else {
    return [];
  }
}

/*
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




// Create Event for future adaptation

Future<EventCall> createEvent(EventNew event) async {
  final apiClient = ApiClient(baseURL: apiUrl);


  final response = await apiClient.school.newOne("Event", event.toJson());
  if (response.isSuccessful && response.body != null) {
    // Backend returns the created event as Map<String, dynamic>
    return EventCall.fromJson(response.body! as Map<String, dynamic>);
  }
  throw Exception('Failed to create event: ${response.statusCode}');
}
 */
