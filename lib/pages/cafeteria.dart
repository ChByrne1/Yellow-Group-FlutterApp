import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import '../Theme/theme.dart';
import '../models/overview.dart';
import '../navigation/overview.dart';
import '../network/overview.dart';
import '../repositories/cafeteria_repo.dart';
import '../sets/overview.dart';

class CafeteriaPage extends StatefulWidget {
  const CafeteriaPage({super.key});

  @override
  State<CafeteriaPage> createState() => _CafeteriaPageState();
}

class _CafeteriaPageState extends State<CafeteriaPage> {
  late final ApiClient _apiClient;
  late Future<CafeteriaSpecial?> _specialFuture;
  final CafeteriaRepository _repository = CafeteriaRepository();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _apiClient = ApiClient(baseURL: apiUrl);
    _specialFuture = fetchTodaySpecial(_apiClient);
    _syncData();
  }

  Future<void> _syncData() async {
    setState(() => _isLoading = true);
    await _repository.syncCafeteria();
    setState(() => _isLoading = false);
  }
  List<CafeteriaItem> _getItems() {
    return _repository.getAllItems();
  }

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    return Container(
      color: pageSetup.appBarTheme.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: const YellowBottomNav(),
          drawer: const YellowDrawerNav(),
          appBar: const YellowAppBar(),

          body: StreamBuilder<BoxEvent>(
            stream: _repository.watchCafeteria(),
            builder: (context, snapshot) {
              final items = _getItems();

              if (items.isEmpty) {
                return ListView(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  children: [
                    const SpecialCard(special: null,),
                    const SizedBox(height: 24),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.fastfood,
                            size: 64,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'No cafeteria items available',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 8),
                          if (!_isLoading)
                            ElevatedButton.icon(
                              onPressed: _syncData,
                              icon: const Icon(Icons.refresh),
                              label: const Text('Load Menu'),
                            ),
                        ],
                      ),
                    ),
                  ],
                );
              }

              return RefreshIndicator(
                onRefresh: _syncData,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  itemCount: items.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return const SpecialCard(special: null,);
                    }

                    final item = items[index - 1];
                    return CafeTile(item: item);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}