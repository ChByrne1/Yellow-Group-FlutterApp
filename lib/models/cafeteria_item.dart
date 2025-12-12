import 'package:freezed_annotation/freezed_annotation.dart';

import '../network/client.dart';
import '../network/mobileService.dart';

part 'cafeteria_item.g.dart';

part 'cafeteria_item.freezed.dart';

//enum MenuCategory { side, drink, appetizer }

@freezed
class CafeteriaItem with _$CafeteriaItem {
  const factory CafeteriaItem({
    int? id,
    int? category,
    String? name,
    String? description,
    String? iconName,
  }) = _CafeteriaItem;


  factory CafeteriaItem.fromJson(Map<String, dynamic> json) =>
      _$CafeteriaItemFromJson(json);
}

Future<List<CafeteriaItem>> fetchCafeteriaItems() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.getCafeteria();

  if (response.isSuccessful && response.body != null) {
    List<Map<String, dynamic>>? jsonList = response.body;
    List<CafeteriaItem> items = jsonList!
        .map((json) => CafeteriaItem.fromJson(json))
        .toList();
    return items;
  } else {
    return [];
  }
}