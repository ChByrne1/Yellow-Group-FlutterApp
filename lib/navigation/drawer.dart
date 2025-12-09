import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Theme/theme.dart';
import '../services/auth_service.dart';

class YellowDrawerNav extends StatelessWidget {
  const YellowDrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    final authService = AuthService();
    String currentLocation = GoRouterState
        .of(context)
        .uri
        .toString();
    
    return Drawer(
      child: ListView(
        children: [
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
              // Router will automatically redirect to login
            },
          ),
        ],
      ),
    );
  }
}
