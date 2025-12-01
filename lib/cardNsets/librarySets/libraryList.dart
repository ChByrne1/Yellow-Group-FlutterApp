import 'package:flutter/cupertino.dart';
import 'libraryCard.dart';
import '../../models/overview.dart';

class LibraryList extends StatelessWidget {
  final List<Book> books;

  const LibraryList({
    super.key,
    required this.books
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
                  libraryCard(book: books[index]
                  ),
              childCount: books.length,
            ),)
        ]);
  }


}