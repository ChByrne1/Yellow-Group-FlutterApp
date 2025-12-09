import 'package:flutter/material.dart';


class YellowAppBar extends StatelessWidget implements PreferredSizeWidget {
  const YellowAppBar({super.key});

  @override

    Widget build(BuildContext context) {
      return Scaffold(
          body: AppBar(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('images/school_logo.png'),
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


