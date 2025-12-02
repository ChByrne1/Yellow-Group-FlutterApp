import 'package:flutter/material.dart';
import '../../models/overview.dart';

@override
class eventCard extends StatelessWidget {
  final EventCall event;

  const eventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(event.title ?? ' '),
        title: Text(event.location ?? ' '),
        subtitle: Text(event.description ?? ' ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis),

      ),
    );
  }
}
