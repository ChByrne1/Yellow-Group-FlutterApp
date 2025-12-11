import 'package:hive_ce/hive.dart';
import '../models/cafeteria_item.dart';

class CafeteriaRepository {
  late Box<CafeteriaItem> _cafeteriaBox;

  CafeteriaRepository() {
    _cafeteriaBox = Hive.box<CafeteriaItem>('Cafeteria');
  }

  Stream<BoxEvent> watchCafeteria() => _cafeteriaBox.watch();

  List<CafeteriaItem> getAllItems() {
    return _cafeteriaBox.values.toList()
      ..sort((a, b) => (a.displayName ?? '')
          .toLowerCase()
          .compareTo((b.displayName ?? '').toLowerCase()));
  }

  List<CafeteriaItem> getItemsByCategory(int category) {
    return _cafeteriaBox.values
        .where((item) => item.categorySet == category)
        .toList()
      ..sort((a, b) => (a.displayName ?? '')
          .toLowerCase()
          .compareTo((b.displayName ?? '').toLowerCase()));
  }

  List<CafeteriaItem> getItemCount(int count) {
    final all = getAllItems();
    return all.take(count).toList();
  }

  CafeteriaItem? getItem(int id) => _cafeteriaBox.get(id);


  bool get hasItems => _cafeteriaBox.isNotEmpty;

  int get itemCount => _cafeteriaBox.length;

  /// Sync from API into local Hive, similar to syncNews().
  Future<void> syncCafeteria() async {
    try {
      final apiItems = await fetchCafeteriaItems();
      await _cafeteriaBox.clear();

      for (var item in apiItems) {
        if (item.id != null) {
          await _cafeteriaBox.put(item.id, item);
        }
      }

      // ignore: avoid_print
      print('✅ Synced ${apiItems.length} cafeteria items');
    } catch (e) {
      // ignore: avoid_print
      print('❌ Error syncing cafeteria: $e');
    }
  }

  Future<void> clearAll() async => _cafeteriaBox.clear();
}
