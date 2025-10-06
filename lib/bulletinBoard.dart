import 'package:flutter/material.dart';
import 'package:yellow_group_flutterapp/theme.dart';

import 'navigation/bottomNav.dart';

class BulletinBoardPage extends StatelessWidget {
  const BulletinBoardPage({Key? key}) : super(key: key);

  // Example data
  final List<Map<String, dynamic>> newsItems = const [
    {
      'title': 'Library Opens',
      'date': '2025-10-02',
      'content': 'Our new library has opened with thousands of new books.',
    },
    {
      'title': 'New Cafeteria Menu',
      'date': '2025-09-28',
      'content': 'We’ve updated our lunch menu to include healthier options.',
    },
    {
      'title': 'Sports Day',
      'date': '2025-10-05',
      'content': 'Join us for the annual Sports Day this Friday!',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    // Sort items by date (newest first)
    List<Map<String, dynamic>> sortedItems = List.from(newsItems);
    sortedItems.sort((a, b) => b['date'].compareTo(a['date']));

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[100],
          bottomNavigationBar: MyNavBar(),
      body: Column(
        children: [
          // Header widget that stays at the top
          Container(
            color: pageSetup.primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: Row(
              children: [
                // Logo
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/school_logo.png'),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(width: 12),

                // School name and title
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'West Virginia University at Parkersburg',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '📢 School Bulletin Board',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Expanded list view of news items
          Expanded(
            child: ListView.builder(
              itemCount: sortedItems.length,
              itemBuilder: (context, index) {
                final item = sortedItems[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      item['title'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      item['date'],
                      style: const TextStyle(color: Colors.grey),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(item['content']),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
        ),
    );
  }
}
