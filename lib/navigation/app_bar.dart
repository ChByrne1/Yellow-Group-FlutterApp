import 'package:flutter/material.dart';
import '../Theme/theme.dart';

class YellowAppBar extends StatelessWidget implements PreferredSizeWidget {
  const YellowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return AppBar(
      backgroundColor: pageSetup.appBarTheme.backgroundColor,
      automaticallyImplyLeading: true, // ✅ shows the menu icon automatically
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer(); // ✅ opens the drawer
          },
        ),
      ),
      centerTitle: true,
      title: const Text('West Virginia University at Parkersburg'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}