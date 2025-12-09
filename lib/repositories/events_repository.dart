import 'package:hive_ce/hive.dart';
import '../models/event_item.dart';
import '../api/api_service.dart';

class EventsRepository {
  final ApiService _apiService = ApiService();
  late Box<EventItem> _eventsBox;

  EventsRepository() {
    _eventsBox = Hive.box<EventItem>('events');
  }

  Stream<BoxEvent> watchEvents() => _eventsBox.watch();

  List<EventItem> getAllEvents() {
    return _eventsBox.values.toList()
      ..sort((a, b) => a.start.compareTo(b.start));
  }

  List<EventItem> getUpcomingEvents() {
    return _eventsBox.values.where((event) => event.isUpcoming).toList()
      ..sort((a, b) => a.start.compareTo(b.start));
  }

  List<EventItem> getOngoingEvents() {
    return _eventsBox.values.where((event) => event.isOngoing).toList();
  }

  List<EventItem> getPastEvents() {
    return _eventsBox.values.where((event) => event.isPast).toList()
      ..sort((a, b) => b.end.compareTo(a.end));
  }

  List<EventItem> getEventsByCampus(int campusId) {
    return _eventsBox.values
        .where((event) => event.campusId == campusId)
        .toList()
      ..sort((a, b) => a.start.compareTo(b.start));
  }

  Future<void> syncEvents() async {
    try {
      final apiEvents = await _apiService.fetchEvents();
      await _eventsBox.clear();

      for (var event in apiEvents) {
        await _eventsBox.put(event.id, event);
      }

      print('✅ Synced ${apiEvents.length} events');
    } catch (e) {
      print('❌ Error syncing events: $e');
    }
  }

  Future<void> addEvent(EventItem event) async {
    await _eventsBox.put(event.id, event);
  }

  Future<void> updateEvent(EventItem event) async {
    await _eventsBox.put(event.id, event);
  }

  Future<void> deleteEvent(int id) async {
    await _eventsBox.delete(id);
  }

  EventItem? getEvent(int id) => _eventsBox.get(id);

  Future<void> clearAll() async => await _eventsBox.clear();

  int get eventCount => _eventsBox.length;

  bool get hasEvents => _eventsBox.isNotEmpty;

  // Mock data for testing
  Future<void> addMockEvents() async {
    final now = DateTime.now();

    final mockEvents = [
      EventItem(
        id: 1,
        title: 'Campus Open House',
        description: 'Join us for an exciting campus tour and meet faculty members.',
        start: now.add(Duration(hours: 2)),
        end: now.add(Duration(hours: 5)),
        campusId: 1,
        location: 'Main Campus Building',
      ),
      EventItem(
        id: 2,
        title: 'Tech Conference 2024',
        description: 'Annual technology conference featuring industry leaders.',
        start: now.add(Duration(days: 7)),
        end: now.add(Duration(days: 7, hours: 8)),
        campusId: 1,
        location: 'Student Center Hall',
      ),
      EventItem(
        id: 3,
        title: 'Sports Day',
        description: 'Participate in various sports activities.',
        start: now.add(Duration(days: 14)),
        end: now.add(Duration(days: 14, hours: 6)),
        campusId: 2,
        location: 'Athletic Field',
      ),
      EventItem(
        id: 4,
        title: 'Career Fair 2024',
        description: 'Meet potential employers.',
        start: now.subtract(Duration(days: 2)),
        end: now.subtract(Duration(days: 2, hours: -4)),
        campusId: 1,
        location: 'Conference Center',
      ),
      EventItem(
        id: 5,
        title: 'Science Exhibition',
        description: 'Student showcase of science projects.',
        start: now.subtract(Duration(hours: 1)),
        end: now.add(Duration(hours: 2)),
        campusId: 2,
        location: 'Science Building',
      ),
    ];

    for (var event in mockEvents) {
      await _eventsBox.put(event.id, event);
    }
  }
}