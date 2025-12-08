import 'package:flutter/material.dart';
import '../../models/overview.dart';        // EventCall, EventEdit
import '../network/overview.dart';         // ApiClient, apiUrl
import '../cardNsets/overview.dart';       // EventList / eventCard
import '../navigation/overView.dart';      // YellowAppBar, YellowBottomNav, YellowDrawerNav
import 'event_edit.dart';
import 'events_new.dart';                  // NewEventPage
               // <-- add this

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late Future<List<EventCall>> _futureEvents;

  @override
  void initState() {
    super.initState();
    _futureEvents = fetchEventItems();
  }

  Future<List<EventCall>> fetchEventItems() async {
    final apiClient = ApiClient(baseURL: apiUrl);
    final response = await apiClient.school.getEvents();

    if (response.isSuccessful && response.body != null) {
      final jsonList = response.body!;
      return jsonList.map((json) => EventCall.fromJson(json)).toList();
    } else {
      return [];
    }
  }

  Future<void> _reloadEvents() async {
    setState(() {
      _futureEvents = fetchEventItems();
    });
  }

  Future<void> _openNewEvent() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const NewEventPage()),
    );
    await _reloadEvents();
  }

  // EDIT: open edit page for an EventCall
  void _openEditEvent(EventCall call) {
    // convert EventCall -> EventEdit
    final edit = EventEdit(
      id: call.id,
      title: call.title ?? '',
      description: call.description ?? '',
      start: call.start,
      end: call.end,
      campusId: call.campusId,
      location: call.location ?? '',
      timestamp: call.timestamp,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EditEventPage(event: edit),
      ),
    ).then((_) {
      _reloadEvents();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: YellowAppBar(),
        bottomNavigationBar: YellowBottomNav(),
        drawer: YellowDrawerNav(),
        floatingActionButton: FloatingActionButton(
          onPressed: _openNewEvent,
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Center(
                child: Text(
                  'Library',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<EventCall>>(
                future: _futureEvents,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Error loading events\nURL: $apiUrl\nError: ${snapshot.error}',
                      ),
                    );
                  } else {
                    final eventList = snapshot.data ?? [];
                    return EventList(
                      events: eventList,
                      onEventTap: _openEditEvent,   // <-- pass the callback
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
