import 'package:hive_ce/hive.dart';

part 'event_item.g.dart';

@HiveType(typeId: 0)
class EventItem extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String description;

  @HiveField(3)
  DateTime start;

  @HiveField(4)
  DateTime end;

  @HiveField(5)
  int campusId;

  @HiveField(6)
  String location;

  EventItem({
    required this.id,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
    required this.campusId,
    required this.location,
  });

  // Factory constructor to create EventItem from JSON (API response)
  factory EventItem.fromJson(Map<String, dynamic> json) {
    return EventItem(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      campusId: json['campus_id'] as int,
      location: json['location'] as String,
    );
  }

  // Convert EventItem to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'start': start.toIso8601String(),
      'end': end.toIso8601String(),
      'campus_id': campusId,
      'location': location,
    };
  }

  // Helper method to check if event is ongoing
  bool get isOngoing {
    final now = DateTime.now();
    return now.isAfter(start) && now.isBefore(end);
  }

  // Helper method to check if event is upcoming
  bool get isUpcoming {
    return DateTime.now().isBefore(start);
  }

  // Helper method to check if event is past
  bool get isPast {
    return DateTime.now().isAfter(end);
  }

  // Get event duration
  Duration get duration {
    return end.difference(start);
  }
}