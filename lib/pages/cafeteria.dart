import 'package:flutter/material.dart';
import '../models/overview.dart';
import '../sets/overview.dart';


class CafeteriaPage extends StatefulWidget {
  const CafeteriaPage({super.key});

  @override
  State<CafeteriaPage> createState() => _CafeteriaPageState();
}

class _CafeteriaPageState extends State<CafeteriaPage> {
  late Future<List<CafeteriaItem>> _items;

  @override
  void initState() {
    super.initState();
    _items = fetchCafeteriaItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cafeteria'),
      ),
      body: FutureBuilder<List<CafeteriaItem>>(
        future: _items,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error loading cafeteria: ${snapshot.error}'),
            );
          }

          final items = snapshot.data ?? [];
          if (items.isEmpty) {
            return const Center(child: Text('No cafeteria items available'));
          }

          final special = items.first;
          final rest = items.skip(1).toList();

          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SpecialCard(item: special),
              ),
              SliverList.builder(
                itemCount: rest.length,
                itemBuilder: (context, index) {
                  final item = rest[index];
                  return CafeTile(item: item);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}