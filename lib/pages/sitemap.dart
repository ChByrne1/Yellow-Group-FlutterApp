import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yellow_group_flutterapp/Theme/theme.dart';
import 'package:yellow_group_flutterapp/navigation/overview.dart';


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
                    title: Text('Campus'),
                    children: <Widget>[
                      TextButton(
                        onPressed: () => context.go('/Cafeteria'),
                        child: Text("Cafeteria"),
                      ),
                      TextButton(
                        onPressed: () => context.go('/library'),
                        child: Text("Library"),
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
                        child: Text("About WVUP"),
                      ),
                      TextButton(
                        onPressed: () => context.go('/AboutApp'),
                        child: Text("App Info"),
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


