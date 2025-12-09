import 'package:hive_ce/hive.dart';
import '../models/news.dart';
import '../api/api_service.dart';

class NewsRepository {
  final ApiService _apiService = ApiService();
  late Box<SchoolNews> _newsBox;

  NewsRepository() {
    _newsBox = Hive.box<SchoolNews>('news');
  }

  Stream<BoxEvent> watchNews() => _newsBox.watch();

  List<SchoolNews> getAllNews() {
    return _newsBox.values
        .where((news) => news.hasValidData)
        .toList()
      ..sort((a, b) =>
          b.displayDate.compareTo(a.displayDate));
  }

  List<SchoolNews> getRecentNews() {
    return _newsBox.values
        .where((news) => news.hasValidData && news.isRecent)
        .toList()
      ..sort((a, b) => b.displayDate.compareTo(a.displayDate));
  }

  List<SchoolNews> getNewsBySchool(int schoolId) {
    return _newsBox.values
        .where((news) => news.hasValidData && news.schoolId == schoolId)
        .toList()
      ..sort((a, b) => b.displayDate.compareTo(a.displayDate));
  }

  List<SchoolNews> getNewsByAuthor(String author) {
    return _newsBox.values
        .where((news) =>
    news.hasValidData &&
        news.author?.toLowerCase() == author.toLowerCase())
        .toList()
      ..sort((a, b) => b.displayDate.compareTo(a.displayDate));
  }

  List<SchoolNews> getNewsCount(int count) {
    final allNews = getAllNews();
    return allNews.take(count).toList();
  }

  Future<void> syncNews() async {
    try {
      final apiNews = await _apiService.fetchNews();
      await _newsBox.clear();

      for (var news in apiNews) {
        if (news.id != null) {
          await _newsBox.put(news.id, news);
        }
      }

      print('✅ Synced ${apiNews.length} news items');
    } catch (e) {
      print('❌ Error syncing news: $e');
    }
  }

  Future<void> addNews(SchoolNews news) async {
    if (news.id != null) {
      await _newsBox.put(news.id, news);
    }
  }

  Future<void> updateNews(SchoolNews news) async {
    if (news.id != null) {
      await _newsBox.put(news.id, news);
    }
  }

  Future<void> deleteNews(int id) async {
    await _newsBox.delete(id);
  }

  SchoolNews? getNews(int id) => _newsBox.get(id);

  Future<void> clearAll() async => await _newsBox.clear();

  int get newsCount => _newsBox.length;

  bool get hasNews => _newsBox.isNotEmpty;

  // Mock data for testing
  Future<void> addMockNews() async {
    final now = DateTime.now();

    final mockNews = [
      SchoolNews(
        id: 1,
        schoolId: 1,
        headline: 'New Computer Lab Opening',
        content: 'We are excited to announce the opening of our state-of-the-art computer lab equipped with the latest technology and software for students. This facility will provide students with hands-on experience with cutting-edge computing equipment.',
        datePublished: now.subtract(Duration(days: 1)),
        author: 'Admin Team',
      ),
      SchoolNews(
        id: 2,
        schoolId: 1,
        headline: 'Basketball Team Wins Championship',
        content: 'Congratulations to our basketball team for winning the regional championship! The team showed exceptional skill and determination throughout the tournament. This victory marks the third consecutive championship for our school.',
        datePublished: now.subtract(Duration(days: 3)),
        author: 'Sports Department',
      ),
      SchoolNews(
        id: 3,
        schoolId: 1,
        headline: 'Registration for Spring Semester Now Open',
        content: 'Students can now register for spring semester courses. Please visit the registrar office or use the online portal to complete your registration. Early registration is encouraged to secure your preferred class schedule.',
        datePublished: now.subtract(Duration(days: 5)),
        author: 'Registrar Office',
      ),
      SchoolNews(
        id: 4,
        schoolId: 1,
        headline: 'Student Art Exhibition This Weekend',
        content: 'The annual student art exhibition will be held this weekend in the main gallery. Come see amazing works from our talented art students across various mediums including painting, sculpture, and digital art.',
        datePublished: now.subtract(Duration(days: 7)),
        author: 'Art Department',
      ),
      SchoolNews(
        id: 5,
        schoolId: 2,
        headline: 'New Scholarship Opportunities Available',
        content: 'Several new scholarship opportunities are now available for eligible students. Applications are being accepted through the end of the month. Visit the financial aid office for more information and application materials.',
        datePublished: now.subtract(Duration(days: 10)),
        author: 'Financial Aid Office',
      ),
    ];

    for (var news in mockNews) {
      await _newsBox.put(news.id!, news);
    }
  }
}