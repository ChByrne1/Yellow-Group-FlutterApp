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
              drawer: YellowDrawerNav(),
              //Everything can be put below here.
              // body: ,
              body: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text(
                      'About This Project',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text(
                      'This app was created to help streamline school communication and keep students updated with the latest news and events. It reflects teamwork, design, and functionality aimed at improving community engagement.',
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}