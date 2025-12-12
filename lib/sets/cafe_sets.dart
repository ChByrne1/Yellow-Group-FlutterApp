import 'package:flutter/material.dart';
import '../models/overview.dart';
import '../network/api_client.dart';


class SpecialCard extends StatelessWidget {
final CafeteriaSpecial? special;
const SpecialCard({super.key, required this.special});

@override
Widget build(BuildContext context) {
  const assetPath = 'images/Thursday.jpg';
  return Card(
    margin: const EdgeInsets.all(16),
    color: Theme.of(context).colorScheme.primaryContainer,
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today's Special",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              assetPath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
               ],
      ),
    ),
  );
}
}

class CafeTile extends StatelessWidget {
  final CafeteriaItem item;

  const CafeTile({super.key, required this.item});

  IconData _getCategoryIcon(int? category) {
    switch (category) {
      case 0:
        return Icons.local_dining;
      case 1:
        return Icons.local_drink;
      case 2:
        return Icons.fastfood;
      case 3:
        return Icons.cake;
      case 4:
        return Icons.star;
      default:
        return Icons.restaurant;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 2,
      child: ListTile(
        leading: Icon(
          _getCategoryIcon(item.category)
        ),
        title: Text(
          item.displayName ?? 'Unknown',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Text(
          item.shortDescription ?? 'No description',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

