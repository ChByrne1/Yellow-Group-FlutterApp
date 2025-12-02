import 'package:flutter/material.dart';
import '../Theme/theme.dart';
import '../navigation/overview.dart';

class BulletinBoardPage extends StatefulWidget {
  const BulletinBoardPage({super.key});

  @override
  State<BulletinBoardPage> createState() => _BulletinBoardPageState();
}

class _BulletinBoardPageState extends State<BulletinBoardPage> {
  final List<Map<String, dynamic>> newsItems = [
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

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  void _showPostDialog({Map<String, dynamic>? existingPost, int? index}) {
    // Pre-fill fields if editing
    if (existingPost != null) {
      _titleController.text = existingPost['title'];
      _contentController.text = existingPost['content'];
      _selectedDate = DateTime.parse(existingPost['date']);
    } else {
      _titleController.clear();
      _contentController.clear();
      _selectedDate = DateTime.now();
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(existingPost == null ? 'New Bulletin Post' : 'Edit Post'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: _contentController,
                decoration: const InputDecoration(labelText: 'Content'),
                maxLines: 3,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Date: ${_selectedDate.toLocal().toString().split(' ')[0]}",
                  ),
                  const Spacer(),
                  TextButton(
                    child: const Text('Pick Date'),
                    onPressed: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: _selectedDate,
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                      );
                      if (picked != null) {
                        setState(() => _selectedDate = picked);
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                final post = {
                  'title': _titleController.text,
                  'date': _selectedDate.toIso8601String().split('T').first,
                  'content': _contentController.text,
                };
                if (existingPost != null && index != null) {
                  newsItems[index] = post; // update
                } else {
                  newsItems.add(post); // add new
                }
              });
              Navigator.pop(context);
            },
            child: Text(existingPost == null ? 'Post' : 'Update'),
          ),
        ],
      ),
    );
  }

  void _deletePost(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Post'),
        content: const Text('Are you sure you want to delete this post?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() => newsItems.removeAt(index));
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();
    final sortedItems = List<Map<String, dynamic>>.from(newsItems)
      ..sort((a, b) => b['date'].compareTo(a['date']));

    return Container(
      color: pageSetup.appBarTheme.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: YellowAppBar(),
          bottomNavigationBar: YellowBottomNav(),
          drawer: const YellowDrawerNav(),
          body: ListView.builder(
            itemCount: sortedItems.length,
            itemBuilder: (context, index) {
              final item = sortedItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
                    const Divider(),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          label: const Text('Edit'),
                          onPressed: () => _showPostDialog(
                            existingPost: item,
                            index: index,
                          ),
                        ),
                        TextButton.icon(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          label: const Text('Delete'),
                          onPressed: () => _deletePost(index),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _showPostDialog(),
            backgroundColor: Colors.blueAccent,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
