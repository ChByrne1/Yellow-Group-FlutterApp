import 'package:flutter/material.dart';
import 'bulletinBoard.dart';
import 'library.dart';
import 'theme.dart';
import 'navigation/bottomNav.dart';
import 'package:yellow_group_flutterapp/ChPages/DemoPages.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [const HomeScreen(), Page1(), const Page2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          "YellowGroup",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: MyNavBar(),
    );
  }


  }



final GoRouter routes =
    GoRouter(
        initialLocation: '/',
        routes: [
    GoRoute(path: '/',
      builder: (context, state) =>HomePage()
    ),
       GoRoute(path: '/BulletinBoard',
          builder: (context, state) => BulletinBoardPage()
       ),
      GoRoute(path: '/library',
          builder: (context, state) =>LibraryPage()
      ),
]
    );