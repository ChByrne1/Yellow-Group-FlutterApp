import 'package:flutter/cupertino.dart';
import 'package:yellow_group_flutterapp/cardNsets/testSets/testCard.dart';
import 'package:yellow_group_flutterapp/models/cafeteria_item.dart';
import '../../models/overview.dart';

class EventList extends StatelessWidget {
  final List<EventCall> events;
  final void Function(EventCall event)? onEventTap;

  const EventList({
    super.key,
    required this.events,
    this.onEventTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) => GestureDetector(
              onTap: onEventTap == null
                  ? null
                  : () => onEventTap!(events[index]),
              child: eventCard(event: events[index]),
            ),
            childCount: events.length,
          ),
        ),
      ],
    );
  }
}