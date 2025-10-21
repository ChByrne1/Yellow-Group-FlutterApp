import 'package:flutter/material.dart';
import 'Theme/theme.dart';
import 'navigation/overview.dart';


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

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return Container(
        color: pageSetup.appBarTheme.backgroundColor,
        child:
        SafeArea(
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/homePageBackground.jpg"), fit: BoxFit.fitHeight,),
                  ),
                ),
                Center(
                  child: Text('West Virginia University Parkersburg', style: pageSetup.textTheme.titleLarge),
                ),
                //this is where the news will go
                Container(
                  child: ListView.builder(itemCount: 3,
                      itemBuilder:  (context, index) {

                      }
                  ),
                )
              ],
            ),
            bottomNavigationBar: YellowBottomNav(),
            drawer: YellowDrawerNav(),
          ),
        )
    );
  }


}