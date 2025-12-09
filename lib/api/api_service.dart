import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/event_item.dart';
import '../models/news.dart';

class ApiService {
  static const String baseUrl = 'http://localhost:5153';

  // Fetch events from API
  Future<List<EventItem>> fetchEvents() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/events'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return jsonData.map((json) => EventItem.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load events: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching events: $e');
      rethrow;
    }
  }

  // Fetch news from API
  Future<List<SchoolNews>> fetchNews() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/news'),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        return jsonData.map((json) => SchoolNews.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load news: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching news: $e');
      rethrow;
    }
  }
}