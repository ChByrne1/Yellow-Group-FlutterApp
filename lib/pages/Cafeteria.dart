import 'package:flutter/material.dart';
import '../../models/overview.dart';
import '../network/overview.dart';
import '../cardNsets/overview.dart';
import '../navigation/overView.dart';
import '../Theme/theme.dart';
import 'cafeteria_new.dart';

class CafeteriaPage extends StatelessWidget {
  const CafeteriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<CafeteriaItem>> fetchCafeteriaItems() async {
      final apiClient = ApiClient(baseURL: apiUrl);
      final response = await apiClient.school.getCafeteria();

      if (response.isSuccessful && response.body != null) {
        final List<Map<String, dynamic>> jsonList = response.body!;
        //final List<CafeteriaItem> cafeList =
       // jsonList.map((json) => CafeteriaItem.fromJson(json)).toList();

       // return jsonList.map((json) => CafeteriaMenu.fromJson(json)).toList();

        final menus = jsonList.map((json) => CafeteriaMenu.fromJson(json)).toList();
        final items = menus.expand((m) => m.menuItems).toList();
        return items;
      } else {
        return [];
      }
    }

    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const NewCafeteriaItemPage(),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Text(
                    'Library',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),


              /*ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [LibraryList(books: bookList),
            Container(height: 300, color: Colors.green),
                Container(height: 300, color: Colors.green),
            ]
            ),*/
              Expanded(child: FutureBuilder<List<CafeteriaItem>>(
                future: fetchCafeteriaItems(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error loading cafeteria items\nURL: $apiUrl\nError: ${snapshot.error}'));
                  } else {
                    final cafeList = snapshot.data ?? [];
                    return CafeList(items: cafeList);
                  }
                },
              ),
              ),
            ],
          ),
          appBar: YellowAppBar(),
          bottomNavigationBar: YellowBottomNav(),
          drawer: YellowDrawerNav()
      ),
    );
  }
}