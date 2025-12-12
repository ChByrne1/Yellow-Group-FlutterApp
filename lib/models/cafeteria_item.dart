import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import '../network/overview.dart';

part 'cafeteria_item.g.dart';
part 'cafeteria_item.freezed.dart';

//enum MenuCategory { side, drink, appetizer }

@freezed
@HiveType(typeId: 6)
class CafeteriaItem with _$CafeteriaItem {
  CafeteriaItem._();

  factory CafeteriaItem({
    @HiveField(0) int? id,
    @HiveField(1) int? category,
    @HiveField(2) String? name,
    @HiveField(3) String? description,
    @HiveField(4) String? iconName,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  }) = _CafeteriaItem;

  factory CafeteriaItem.fromJson(Map<String, dynamic> json) =>
      _$CafeteriaItemFromJson(json);

  String? get displayName => name;

  int? get categorySet => category;

  String? get shortDescription =>
      (description == null || description!.isEmpty)
          ? 'No description'
          : description!;

  bool get hasIcon => iconName != null && iconName!.isNotEmpty;
}

Future<List<CafeteriaItem>> fetchCafeteriaItems() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll("Cafeteria");

  if (response.isSuccessful && response.body != null) {
    final jsonList = response.body as List<dynamic>;
    return jsonList
        .map((json) => CafeteriaItem.fromJson(json as Map<String, dynamic>))
        .toList();
  }
  return [];
}
