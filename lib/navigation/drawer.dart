import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../network/overview.dart';

class YellowDrawerNav extends StatelessWidget {
  const YellowDrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    String currentLocation = GoRouterState
        .of(context)
        .uri
        .toString();
    return Drawer(
      width: 200,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(authService.userInfo?['name'] ?? 'User'),
            accountEmail: Text(authService.userInfo?['email'] ?? 'user@wvup.edu'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.yellow[700],
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
    ListTile(
    leading: const Icon(Icons.info),
    title: const Text('About Us'),
    onTap: () {
    Navigator.pop(context); // Close drawer
    context.go('/AboutUs'); // Navigate
    },
    ),
    const Divider(),
    ListTile(
    leading: const Icon(Icons.logout, color: Colors.red),
    title: const Text('Logout', style: TextStyle(color: Colors.red)),
    onTap: () async {
      Navigator.pop(context); // Close drawer
      await authService.signOut();
    }),
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