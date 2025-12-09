import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'Theme/theme.dart';
import 'navigation/overview.dart';
import 'models/event_item.dart';
import 'models/news.dart';
import 'models/cafeteria_item.dart';
import '../repositories/news_repository.dart';
import 'services/auth_service.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    // Web does not use directories
    await Hive.initFlutter();
  } else {
    // Mobile/Desktop
    final appDocumentDir = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(appDocumentDir.path);
  }

  Hive.registerAdapter(EventItemAdapter());
  Hive.registerAdapter(SchoolNewsAdapter());
  Hive.registerAdapter(CafeteriaItemAdapter());

  await Hive.openBox<EventItem>('events');
  await Hive.openBox<SchoolNews>('news');
  await Hive.openBox<CafeteriaItem>('cafeteria');

  final authService = AuthService();
  await authService.initialize();
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
  final NewsRepository _newsRepository = NewsRepository();

  @override
  void initState() {
    super.initState();

    // Load mock data if no news exists
    if (!_newsRepository.hasNews) {
      _newsRepository.addMockNews();
    }
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

                      // ===== News Section =====
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
                            return _buildNewsCard(
                              'No News Available',
                              'Check back later for updates',
                              Icons.article_outlined,
                            );
                          }

                          return Column(
                            children: recentNews.map((news) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: _buildNewsCardFromData(news),
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

          bottomNavigationBar: YellowBottomNav(),
          drawer: YellowDrawerNav(),
        ),
      ),
    );
  }

  // =============================
  // News Card Widgets
  // =============================

  Widget _buildNewsCard(String title, String subtitle, IconData icon) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white.withOpacity(0.95),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.yellow[700],
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 14)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }

  Widget _buildNewsCardFromData(SchoolNews news) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white.withOpacity(0.95),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: news.isRecent ? Colors.orange : Colors.blue,
          child: const Icon(Icons.article, color: Colors.white),
        ),
        title: Row(
          children: [
            if (news.isRecent)
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'NEW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            if (news.isRecent) const SizedBox(width: 8),
            Expanded(
              child: Text(
                news.displayHeadline,
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              news.displayAuthor,
              style: const TextStyle(fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              _formatNewsDate(news.displayDate),
              style: TextStyle(fontSize: 11, color: Colors.grey[600]),
            ),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }

  // =============================
  // Date formatter
  // =============================

  String _formatNewsDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) return 'Today';
    if (difference.inDays == 1) return 'Yesterday';
    if (difference.inDays < 7) return '${difference.inDays} days ago';

    return '${date.month}/${date.day}';
  }
}

