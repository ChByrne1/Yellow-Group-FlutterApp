import 'package:flutter/material.dart';

import '../Theme/theme.dart';

class YellowAppBar extends StatelessWidget implements PreferredSizeWidget {
  const YellowAppBar({super.key});

  @override

    Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();

      return Scaffold(
          body: AppBar(
            backgroundColor: pageSetup.appBarTheme.backgroundColor,

        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/school_logo.png'),
          backgroundColor: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          'West Virginia University at Parkersburg',),

      ));
    }

  @override
  Size get preferredSize => Size.fromHeight(70);


  }


