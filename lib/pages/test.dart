import 'package:flutter/material.dart';
import '../cardNsets/overview.dart';
import '../../models/library.dart';
import '../navigation/overView.dart';
import '../Theme/theme.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();

    return SafeArea(
      child: Scaffold(
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
              LibraryBar(),

              /*ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [LibraryList(books: bookList),
            Container(height: 300, color: Colors.green),
                Container(height: 300, color: Colors.green),
            ]
            ),*/
              Expanded(child: LibraryList(books: bookList)),
            ],
          ),
          appBar: YellowAppBar(),
          bottomNavigationBar: YellowBottomNav(),
          drawer: YellowDrawerNav()
      ),
    );
  }
}