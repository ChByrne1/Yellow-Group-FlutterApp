import 'package:flutter/material.dart';
import 'package:yellow_group_flutterapp/Theme/theme.dart';
import 'package:yellow_group_flutterapp/navigation/appBar.dart';
import 'package:yellow_group_flutterapp/navigation/drawer.dart';

import '../navigation/bottomNav.dart';

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "HomeScreen",
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return Container(
        color: pageSetup.primaryColor,
        child:
        SafeArea(
            child: Scaffold(
                appBar: YellowAppBar(),
                bottomNavigationBar: YellowBottomNav(),
                drawer: YellowDrawerNav()
                //Everything can be put below here.
               // body: ,
            )
        )
    );
  }
}

