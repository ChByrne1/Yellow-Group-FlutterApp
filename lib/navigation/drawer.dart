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
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('John Doe'),
            accountEmail: Text('john.doe@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
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
        ],
      ),
    );
  }
}
