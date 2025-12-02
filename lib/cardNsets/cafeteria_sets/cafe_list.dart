import 'package:flutter/cupertino.dart';
import 'package:yellow_group_flutterapp/models/cafeteria_item.dart';
import '../../models/overview.dart';
import 'cafeteria_card.dart';

class CafeList extends StatelessWidget {
  final List<CafeteriaItem> items;

  const CafeList({
    super.key,
    required this.items
  });

  /*@override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                  libraryCard(book: books[index]
                  ),
              childCount: books.length,
            ),)
        ]);
  }*/

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                  cafeCard(item: items[index]
                  ),
              childCount: items.length,
            ),)
        ]);
  }


}