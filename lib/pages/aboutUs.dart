import 'package:flutter/material.dart';
import 'package:yellow_group_flutterapp/Theme/theme.dart';
import 'package:yellow_group_flutterapp/navigation/overView.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
              //Everything can be put below here.
              // body: ,
            )
        )
    );
  }
}