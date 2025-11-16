import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:yellow_group_flutterapp/mock_service.dart';
import 'package:yellow_group_flutterapp/network/overview.dart';
import 'Theme/theme.dart';
import 'navigation/overview.dart';
import 'api/overview.dart';


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
    news.sort((a, b) => a.DatePublished!.millisecondsSinceEpoch.compareTo(b.DatePublished!.millisecondsSinceEpoch));
    final pageSetup = SchoolTheme.pageSetup();
    return Container(
        color: pageSetup.appBarTheme.backgroundColor,
        child:
        SafeArea(
          child: Scaffold(
            //extends the picture behind the bottom nav
            extendBody: true,
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/homePageBackground.jpg"), fit: BoxFit.fitHeight,),
                  ),
                ),
                Center(
                  child: Text('West Virginia University Parkersburg', style: pageSetup.textTheme.headlineLarge),
                ),

                //this is where the news will go
                Positioned(
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder:  (context, index) {
                      var newsItem = news[index];
                      return ExpansionTile(
                        title: Text(newsItem.Headline!),
                        subtitle: Text('Written by ${newsItem.Author}, Pub. ${newsItem.DatePublished!.year}/${newsItem.DatePublished!.month}/${newsItem.DatePublished!.day}'),
                        children: [
                          Text('${newsItem.Content!.substring(0, 32)}...'),
                        ],
                      );
                    }
                ),
                ),

              ],
            ),
            bottomNavigationBar: YellowBottomNav(),
            drawer: YellowDrawerNav(),
          ),
        )
    );
  }

  //I just need to plug a functioning service in here and this page is more-or-less done
  var service = MockNewsService();
  var news = MockNewsService.getNews();

}
