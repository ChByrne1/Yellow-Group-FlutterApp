import 'package:flutter/material.dart';
import '../Theme/theme.dart';
import '../navigation/overview.dart';



class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return Container(
        color: pageSetup.appBarTheme.backgroundColor,
        child:
        SafeArea(
            child: Scaffold(
                appBar: YellowAppBar(),
                bottomNavigationBar: YellowBottomNav(),
                drawer: YellowDrawerNav()
            )
        )
    );
  }
}