import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Theme/theme.dart';

class YellowDrawerNav extends StatelessWidget {
  const YellowDrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    String currentLocation = GoRouterState
        .of(context)
        .uri
        .toString();
    return Drawer(
      width: 200,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Name"),
            accountEmail: const Text("Email"),
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            otherAccountsPictures: [
              CircleAvatar(backgroundColor: Colors.amberAccent),
            ],
          ),
          const SizedBox(
            height: 70,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.greenAccent),
              child: Text('Menu', style: TextStyle(fontSize: 24)),
            ),
          ),
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
    );
  }
}
