import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:yellow_group_flutterapp/network/hive.dart';
import 'Theme/theme.dart';
import 'navigation/overview.dart';
import 'network/overview.dart';

final authService = AuthService();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await authService.initialize();
  await Hive.initFlutter();

  await initHive();
  await authService.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return MaterialApp.router(
      routerConfig: routes,
      title: 'YellowGroup',
      theme: pageSetup,
    );
  }
}
