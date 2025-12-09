import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import '../network/overview.dart';
import '../models/overview.dart';

part 'news_model.g.dart';

part 'news_model.freezed.dart';

@freezed
@HiveType(typeId: 4)
class NewsCall with _$NewsCall {
  const NewsCall._();

  const factory NewsCall({
    @HiveField(0) int? id,

    @HiveField(1) int? schoolId,

    @HiveField(2) String? headline,

    @HiveField(3) String? content,

    @HiveField(4) DateTime? datePublished,

    @HiveField(5) String? author,

    @HiveField(6) int? timestamp,

    @HiveField(7) bool? isDeleted,
  }) = _NewsCall;

  factory NewsCall.fromJson(Map<String, dynamic> json) =>
      _$NewsCallFromJson(json);

  bool get hasValidData => id != null && headline != null && content != null;

  bool get isRecent {
    if (datePublished == null) return false;
    final daysSincePublished = DateTime.now().difference(datePublished!).inDays;
    return daysSincePublished <= 7; // Published within last 7 days
  }

  String get displayHeadline => headline ?? 'Untitled';

  String get displayContent => content ?? 'No content available';

  String get displayAuthor => author ?? 'Unknown Author';

  DateTime get displayDate => datePublished ?? DateTime.now();

  SchoolCall? get getSchool {
    if (schoolId == null) return null;
    final box = Hive.box<SchoolCall>('School');
    return box.values.firstWhere(
      (s) => s.id == schoolId,
      orElse: () => null as SchoolCall,
    );
  }
}

Future<List<NewsCall>> fetchAllNews() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll("News");

  if (response.isSuccessful && response.body != null) {
    final body = response.body;
    final jsonList = body as List<dynamic>;
    final items =
        jsonList
            .map((json) => NewsCall.fromJson(json as Map<String, dynamic>))
            .toList();
    return items;
  } else {
    return [];
  }
}
