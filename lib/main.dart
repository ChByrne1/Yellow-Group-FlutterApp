import 'package:flutter/material.dart';
import 'Theme/theme.dart';
import 'navigation/overview.dart';
import 'package:yellow_group_flutterapp/ChPages/DemoPages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [const HomeScreen(), Page1(), const Page2()];

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


      ),
    )
    );
  }


  }



