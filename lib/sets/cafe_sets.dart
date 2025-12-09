import 'package:flutter/material.dart';
import '../models/overview.dart';


class SpecialCard extends StatelessWidget {
  final CafeteriaItem item;

  const SpecialCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today\'s Special',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              item.displayName ?? 'Unknown',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(item.shortDescription ?? 'No description'),
          ],
        ),
      ),
    );
  }
}

class CafeTile extends StatelessWidget {
  final CafeteriaItem item;

  const CafeTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: item.hasIcon
          ? CircleAvatar(
        child: Text(
          (item.iconName ?? '?').substring(0, 1).toUpperCase(),
        ),
      )
          : const CircleAvatar(child: Icon(Icons.fastfood)),
      title: Text(item.displayName ?? 'Unknown'),
      subtitle: Text(
        item.shortDescription ?? 'No description',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}