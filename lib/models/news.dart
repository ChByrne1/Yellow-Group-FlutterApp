import 'package:hive_ce/hive.dart';

part 'news.g.dart';

@HiveType(typeId: 1)
class SchoolNews extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  int? schoolId;

  @HiveField(2)
  String? headline;

  @HiveField(3)
  String? content;

  @HiveField(4)
  DateTime? datePublished;

  @HiveField(5)
  String? author;

  SchoolNews({
    this.id,
    this.schoolId,
    this.headline,
    this.content,
    this.datePublished,
    this.author,
  });

  // Factory constructor to create SchoolNews from JSON (API response)
  factory SchoolNews.fromJson(Map<String, dynamic> json) {
    return SchoolNews(
      id: json['id'] as int?,
      schoolId: json['SchoolId'] as int? ?? json['school_id'] as int?,
      headline: json['Headline'] as String? ?? json['headline'] as String?,
      content: json['Content'] as String? ?? json['content'] as String?,
      datePublished: json['DatePublished'] != null
          ? DateTime.parse(json['DatePublished'] as String)
          : (json['date_published'] != null
          ? DateTime.parse(json['date_published'] as String)
          : null),
      author: json['Author'] as String? ?? json['author'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'SchoolId': schoolId,
      'Headline': headline,
      'Content': content,
      'DatePublished': datePublished?.toIso8601String(),
      'Author': author,
    };
  }

  // Helper methods
  bool get hasValidData {
    return id != null && headline != null && content != null;
  }

  bool get isRecent {
    if (datePublished == null) return false;
    final daysSincePublished = DateTime.now().difference(datePublished!).inDays;
    return daysSincePublished <= 7; // Published within last 7 days
  }

  String get displayHeadline => headline ?? 'Untitled';
  String get displayContent => content ?? 'No content available';
  String get displayAuthor => author ?? 'Unknown Author';
  DateTime get displayDate => datePublished ?? DateTime.now();
}