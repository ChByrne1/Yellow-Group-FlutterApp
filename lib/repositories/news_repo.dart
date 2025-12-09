import 'package:hive_ce/hive.dart';
import '../models/overview.dart';
import '../network/overview.dart';


class NewsRepository {
  late final ApiClient _apiClient;
  late Box<NewsCall> _newsBox;

  NewsRepository() {
    _newsBox = Hive.box<NewsCall>('News');
    _apiClient = ApiClient(baseURL: apiUrl);
  }

  Stream<BoxEvent> watchNews() => _newsBox.watch();

  List<NewsCall> getAllNews() {
    return _newsBox.values
        .where((news) => news.hasValidData)
        .toList()
      ..sort((a, b) =>
          b.displayDate.compareTo(a.displayDate));
  }

  List<NewsCall> getRecentNews() {
    return _newsBox.values
        .where((news) => news.hasValidData && news.isRecent)
        .toList()
      ..sort((a, b) => b.displayDate.compareTo(a.displayDate));
  }

  List<NewsCall> getNewsBySchool(int schoolId) {
    return _newsBox.values
        .where((news) => news.hasValidData && news.schoolId == schoolId)
        .toList()
      ..sort((a, b) => b.displayDate.compareTo(a.displayDate));
  }

  List<NewsCall> getNewsByAuthor(String author) {
    return _newsBox.values
        .where((news) =>
    news.hasValidData &&
        news.author?.toLowerCase() == author.toLowerCase())
        .toList()
      ..sort((a, b) => b.displayDate.compareTo(a.displayDate));
  }

  List<NewsCall> getNewsCount(int count) {
    final allNews = getAllNews();
    return allNews.take(count).toList();
  }

  Future<void> syncNews() async {
    try {
      final apiNews = await fetchAllNews();
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
/*
  Future<void> addNews(NewsCall news) async {
    if (news.id != null) {
      await _newsBox.put(news.id, news);
    }
  }

  Future<void> updateNews(NewsCall news) async {
    if (news.id != null) {
      await _newsBox.put(news.id, news);
    }
  }

  Future<void> deleteNews(int id) async {
    await _newsBox.delete(id);
  }
*/
  NewsCall? getNews(int id) => _newsBox.get(id);

  Future<void> clearAll() async => await _newsBox.clear();

  int get newsCount => _newsBox.length;

  bool get hasNews => _newsBox.isNotEmpty;


}



