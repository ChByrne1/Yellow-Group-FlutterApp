import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.g.dart';

part 'news.freezed.dart';

@freezed
class SchoolNews with _$SchoolNews {
  const factory SchoolNews({
    int? id,
    int? SchoolId,
    String? Headline,
    String? Content,
    DateTime? DatePublished,
    String? Author,
  }) = _SchoolNews;

  // Create a Ingredient from JSON data
  factory SchoolNews.fromJson(Map<String, dynamic> json) =>
      _$SchoolNewsFromJson(json);
}
