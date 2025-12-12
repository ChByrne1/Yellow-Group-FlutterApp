import 'package:flutter/material.dart';
import '../Theme/theme.dart';
import '../models/overview.dart';
import '../navigation/overview.dart';
import '../repositories/overview.dart';
import '../sets/overview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NewsRepository _newsRepository = NewsRepository();

  @override
  void initState() {
    super.initState();
    _newsRepository.syncNews();
  }

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();

    return Container(
      color: pageSetup.appBarTheme.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          body: Stack(
            children: [
              // Background image
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/homePageBackground.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              // Main content
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),

                      Center(
                        child: Text(
                          'West Virginia University Parkersburg',
                          style: pageSetup.textTheme.headlineLarge?.copyWith(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      const SizedBox(height: 40),


                      Text(
                        'Latest News',
                        style: pageSetup.textTheme.headlineSmall?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      StreamBuilder(
                        stream: _newsRepository.watchNews(),
                        builder: (context, snapshot) {
                          final recentNews = _newsRepository.getNewsCount(3);

                          if (recentNews.isEmpty) {
                            return NewsCard(
                              news: NewsCall(
                                headline: 'No News Available',
                                content: 'Check back later for updates',
                              ),
                            );
                          }

                          return Column(
                            children:
                                recentNews.map((news) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 12.0,
                                    ),
                                    child: NewsCard(news: news),
                                  );
                                }).toList(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          appBar: YellowAppBar(),
          bottomNavigationBar: YellowBottomNav(),
          drawer: YellowDrawerNav(),
        ),
      ),
    );
  }
}