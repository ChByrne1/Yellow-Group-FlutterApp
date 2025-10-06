import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../librarySets/libraryList.dart';
import '../models/library.dart';
import 'librarySets/libraryBar.dart';
import 'navigation/bottomNav.dart';
import 'theme.dart';


class LibraryPage extends StatelessWidget
{
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context)
    {
    final pageSetup = SchoolTheme.pageSetup();

    return SafeArea(
      child: Scaffold(
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Center(
                child: Text('Library',
                  style: Theme.of(context).textTheme.titleLarge,
              ),
              )
              ),
            LibraryBar(),

            Expanded (
                child: LibraryList(books: bookList)
            ),
          ]
      ),
        bottomNavigationBar: MyNavBar(),),
    );
  }
}