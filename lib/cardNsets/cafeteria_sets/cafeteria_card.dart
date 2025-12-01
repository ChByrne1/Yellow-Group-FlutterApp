import 'package:flutter/material.dart';
import '../../models/overview.dart';

@override
class cafeCard extends StatelessWidget {
  final CafeteriaItem item;

  const cafeCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(item.iconName ?? ' '),
                title: Text(item.name ?? ' '),
        subtitle: Text(item.description ?? ' ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis),

      ),
    );
  }
}
