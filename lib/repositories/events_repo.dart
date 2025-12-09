import 'package:hive_ce/hive.dart';
import '../models/overview.dart';
import '../network/overview.dart';

class EventsRepository {
  late final ApiClient _apiClient;
  late Box<EventCall> _eventsBox;

  EventsRepository() {
    _eventsBox = Hive.box<EventCall>('events');
    _apiClient = ApiClient(baseURL: apiUrl);
  }

  Stream<BoxEvent> watchEvents() => _eventsBox.watch();

  List<EventCall> getAllEvents() {
    return _eventsBox.values.toList()
    ..sort((a, b) => a.start!.compareTo(b.start!));
  }

  List<EventCall> getUpcomingEvents() {
    return _eventsBox.values.where((event) => event.isUpcoming).toList()
      ..sort((a, b) => a.start!.compareTo(b.start!));
  }

  List<EventCall> getOngoingEvents() {
    return _eventsBox.values.where((event) => event.isOngoing).toList();
  }

  List<EventCall> getPastEvents() {
    return _eventsBox.values.where((event) => event.isPast).toList()
      ..sort((a, b) => b.end!.compareTo(a.end!));
  }

  List<EventCall> getEventsByCampus(int campusId) {
    return _eventsBox.values
        .where((event) => event.campusId == campusId)
        .toList()
      ..sort((a, b) => a.start!.compareTo(b.start!));
  }

  Future<void> syncEvents() async {
    try {
      final apiEvents = await fetchAllEvents();
      await _eventsBox.clear();

      for (var event in apiEvents) {
        await _eventsBox.put(event.id, event);
      }

      print('✅ Synced ${apiEvents.length} events');
    } catch (e) {
      print('❌ Error syncing events: $e');
    }
  }

  //Future addition
  /*
  Future<void> addEvent(EventCall event) async {
    await _eventsBox.put(event.id, event);
  }

  Future<void> updateEvent(EventCall event) async {
    await _eventsBox.put(event.id, event);
  }

  Future<void> deleteEvent(int id) async {
    await _eventsBox.delete(id);
  }
   */

  EventCall? getEvent(int id) => _eventsBox.get(id);

  Future<void> clearAll() async => await _eventsBox.clear();

  int get eventCount => _eventsBox.length;

  bool get hasEvents => _eventsBox.isNotEmpty;

}



