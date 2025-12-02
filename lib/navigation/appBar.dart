import 'package:flutter/material.dart';
import '../Theme/theme.dart';

class YellowAppBar extends StatelessWidget implements PreferredSizeWidget {
  const YellowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();

<<<<<<< HEAD
    return AppBar(
      backgroundColor: pageSetup.appBarTheme.backgroundColor,
      automaticallyImplyLeading: true, // ✅ shows the menu icon automatically
      leading: Builder(
        builder: (context) => IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer(); // ✅ opens the drawer
          },
=======
    Widget build(BuildContext context) {
      return Scaffold(
          body: AppBar(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/school_logo.png'),
          backgroundColor: Colors.white,
>>>>>>> 313944b100444d6daf9ad2b694153746e67a7c57
        ),
      ),
      centerTitle: true,
      title: const Text('West Virginia University at Parkersburg'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
