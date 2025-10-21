import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yellow_group_flutterapp/Theme/theme.dart';
import 'package:yellow_group_flutterapp/navigation/overview.dart';

import '../navigation/bottomNav.dart';

class SiteMap extends StatelessWidget {
  const SiteMap({super.key});

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

              body: ListView(
                children: [
                  ExpansionTile(
                    title: Text('Campus', style: pageSetup.textTheme.titleLarge),
                    children: <Widget>[
                      TextButton(
                        onPressed: () => context.go('/Cafeteria'),
                        child: Text("Cafeteria", style: pageSetup.textTheme.titleMedium),
                      ),
                      TextButton(
                        onPressed: () => context.go('/library'),
                        child: Text("Library", style: pageSetup.textTheme.titleMedium),
                      ),
                    ],
                  ),

                  ExpansionTile(
                    title: Text('Student Resources'),
                    children: <Widget>[

                    ],
                  ),

                  ExpansionTile(
                    title: Text('Administration'),
                    children: <Widget>[

                    ],
                  ),

                  ExpansionTile(
                    title: Text('Options'),
                    children: <Widget>[
                      TextButton(
                        onPressed: () => context.go('/AboutUs'),
                        child: Text("About WVUP", style: pageSetup.textTheme.titleMedium),
                      ),
                      TextButton(
                        onPressed: () => context.go('/AboutApp'),
                        child: Text("App Info", style: pageSetup.textTheme.titleMedium),
                      ),
                    ],
                  ),
                ],
              ),
            )
        )
    );
  }
}


