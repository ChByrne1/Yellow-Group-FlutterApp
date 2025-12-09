import 'package:flutter/material.dart';
import '../models/news.dart';
import '../repositories/news_repository.dart';
import '../Theme/theme.dart';
import '../navigation/overview.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final NewsRepository _repository = NewsRepository();
  bool _isLoading = false;
  bool _showRecentOnly = false;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    // Load mock data if no news exists
    if (!_repository.hasNews) {
      await _repository.addMockNews();
    }
    _syncData();
  }

  Future<void> _syncData() async {
    setState(() => _isLoading = true);
    await _repository.syncNews();
    setState(() => _isLoading = false);
  }

  List<SchoolNews> _getFilteredNews() {
    return _showRecentOnly
        ? _repository.getRecentNews()
        : _repository.getAllNews();
  }

  @override
  Widget build(BuildContext context) {
    final pageSetup = SchoolTheme.pageSetup();

    return Container(
      color: pageSetup.appBarTheme.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('School News'),
            actions: [
              if (_isLoading)
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              else
                IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: _syncData,
                  tooltip: 'Refresh',
                ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'recent') {
                    setState(() => _showRecentOnly = !_showRecentOnly);
                  } else if (value == 'clear') {
                    _showClearDialog();
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'recent',
                    child: Row(
                      children: [
                        Icon(_showRecentOnly
                            ? Icons.check_box
                            : Icons.check_box_outline_blank),
                        SizedBox(width: 8),
                        Text('Recent Only (7 days)'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'clear',
                    child: Row(
                      children: [
                        Icon(Icons.delete_outline, color: Colors.red),
                        SizedBox(width: 8),
                        Text('Clear All', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: YellowBottomNav(),
          drawer: YellowDrawerNav(),
          body: StreamBuilder(
            stream: _repository.watchNews(),
            builder: (context, snapshot) {
              final newsList = _getFilteredNews();

              if (newsList.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.article_outlined,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 16),
                      Text(
                        _showRecentOnly
                            ? 'No recent news'
                            : 'No news available',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 8),
                      if (!_isLoading)
                        ElevatedButton.icon(
                          onPressed: _syncData,
                          icon: Icon(Icons.refresh),
                          label: Text('Load News'),
                        ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: _syncData,
                child: ListView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    final news = newsList[index];
                    return _buildNewsCard(news);
                  },
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _showCreateNewsDialog(),
            child: Icon(Icons.add),
            tooltip: 'Create News',
          ),
        ),
      ),
    );
  }

  Widget _buildNewsCard(SchoolNews news) {
    final isRecent = news.isRecent;

    return Card(
      elevation: 3,
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => _showNewsDetails(news),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with recent badge
              Row(
                children: [
                  if (isRecent)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  if (isRecent) SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      news.displayHeadline,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // Edit button
                  IconButton(
                    icon: Icon(Icons.edit, size: 20, color: Colors.blue),
                    onPressed: () => _showEditNewsDialog(news),
                    tooltip: 'Edit',
                  ),
                ],
              ),
              SizedBox(height: 12),

              // Author and date
              Row(
                children: [
                  Icon(Icons.person, size: 16, color: Colors.grey[600]),
                  SizedBox(width: 4),
                  Text(
                    news.displayAuthor,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.calendar_today, size: 16, color: Colors.grey[600]),
                  SizedBox(width: 4),
                  Text(
                    _formatDate(news.displayDate),
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),

              if (news.schoolId != null) ...[
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.school, size: 16, color: Colors.grey[600]),
                    SizedBox(width: 4),
                    Text(
                      'School ID: ${news.schoolId}',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],

              SizedBox(height: 12),

              // Content preview
              Text(
                news.displayContent,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];

    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return 'Today';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return '${months[date.month - 1]} ${date.day}, ${date.year}';
    }
  }

  // ==================== CREATE ====================
  void _showCreateNewsDialog() {
    final headlineController = TextEditingController();
    final contentController = TextEditingController();
    final authorController = TextEditingController();
    final schoolIdController = TextEditingController(text: '1');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create News Article'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: headlineController,
                decoration: InputDecoration(
                  labelText: 'Headline',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title),
                ),
                textCapitalization: TextCapitalization.sentences,
              ),
              SizedBox(height: 16),
              TextField(
                controller: contentController,
                decoration: InputDecoration(
                  labelText: 'Content',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.article),
                  alignLabelWithHint: true,
                ),
                maxLines: 5,
                textCapitalization: TextCapitalization.sentences,
              ),
              SizedBox(height: 16),
              TextField(
                controller: authorController,
                decoration: InputDecoration(
                  labelText: 'Author',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                textCapitalization: TextCapitalization.words,
              ),
              SizedBox(height: 16),
              TextField(
                controller: schoolIdController,
                decoration: InputDecoration(
                  labelText: 'School ID',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.school),
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (headlineController.text.isEmpty ||
                  contentController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please fill in headline and content')),
                );
                return;
              }

              // Generate new ID (max + 1)
              final allNews = _repository.getAllNews();
              final maxId = allNews.isEmpty
                  ? 0
                  : allNews.map((n) => n.id ?? 0).reduce((a, b) => a > b ? a : b);

              final newNews = SchoolNews(
                id: maxId + 1,
                schoolId: int.tryParse(schoolIdController.text),
                headline: headlineController.text,
                content: contentController.text,
                author: authorController.text.isEmpty
                    ? 'Anonymous'
                    : authorController.text,
                datePublished: DateTime.now(),
              );

              await _repository.addNews(newNews);

              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('News article created successfully!'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }

  // ==================== READ (Details View) ====================
  void _showNewsDetails(SchoolNews news) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headline
              Text(
                news.displayHeadline,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

              // Meta information
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Text(news.displayAuthor[0].toUpperCase()),
                          radius: 20,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                news.displayAuthor,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                _formatDate(news.displayDate),
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (news.schoolId != null) ...[
                      Divider(height: 24),
                      Row(
                        children: [
                          Icon(Icons.school, size: 20, color: Colors.grey[700]),
                          SizedBox(width: 8),
                          Text(
                            'School ID: ${news.schoolId}',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                    Divider(height: 24),
                    Row(
                      children: [
                        Icon(Icons.fingerprint, size: 20, color: Colors.grey[700]),
                        SizedBox(width: 8),
                        Text(
                          'Article ID: ${news.id}',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              // Content
              Text(
                news.displayContent,
                style: TextStyle(fontSize: 16, height: 1.6),
              ),

              SizedBox(height: 24),

              // Actions
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        _showEditNewsDialog(news);
                      },
                      icon: Icon(Icons.edit),
                      label: Text('Edit'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        _showDeleteConfirmation(news);
                      },
                      icon: Icon(Icons.delete, color: Colors.red),
                      label: Text('Delete', style: TextStyle(color: Colors.red)),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ==================== UPDATE ====================
  void _showEditNewsDialog(SchoolNews news) {
    final headlineController = TextEditingController(text: news.headline);
    final contentController = TextEditingController(text: news.content);
    final authorController = TextEditingController(text: news.author);
    final schoolIdController = TextEditingController(
        text: news.schoolId?.toString() ?? ''
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit News Article'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: headlineController,
                decoration: InputDecoration(
                  labelText: 'Headline',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title),
                ),
                textCapitalization: TextCapitalization.sentences,
              ),
              SizedBox(height: 16),
              TextField(
                controller: contentController,
                decoration: InputDecoration(
                  labelText: 'Content',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.article),
                  alignLabelWithHint: true,
                ),
                maxLines: 5,
                textCapitalization: TextCapitalization.sentences,
              ),
              SizedBox(height: 16),
              TextField(
                controller: authorController,
                decoration: InputDecoration(
                  labelText: 'Author',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                textCapitalization: TextCapitalization.words,
              ),
              SizedBox(height: 16),
              TextField(
                controller: schoolIdController,
                decoration: InputDecoration(
                  labelText: 'School ID',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.school),
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (headlineController.text.isEmpty ||
                  contentController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please fill in headline and content')),
                );
                return;
              }

              final updatedNews = SchoolNews(
                id: news.id,
                schoolId: int.tryParse(schoolIdController.text),
                headline: headlineController.text,
                content: contentController.text,
                author: authorController.text.isEmpty
                    ? 'Anonymous'
                    : authorController.text,
                datePublished: news.datePublished, // Keep original date
              );

              await _repository.updateNews(updatedNews);

              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('News article updated successfully!'),
                  backgroundColor: Colors.blue,
                ),
              );
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }

  // ==================== DELETE ====================
  void _showDeleteConfirmation(SchoolNews news) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.warning, color: Colors.orange),
            SizedBox(width: 8),
            Text('Delete News?'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Are you sure you want to delete this news article?'),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.displayHeadline,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'By ${news.displayAuthor}',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Text(
              'This action cannot be undone.',
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (news.id != null) {
                await _repository.deleteNews(news.id!);
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('News article deleted'),
                    backgroundColor: Colors.red,
                    action: SnackBarAction(
                      label: 'UNDO',
                      textColor: Colors.white,
                      onPressed: () async {
                        // Re-add the news
                        await _repository.addNews(news);
                      },
                    ),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text('Delete'),
          ),
        ],
      ),
    );
  }

  void _showClearDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Clear All News?'),
        content: Text('This will delete all cached news. You can reload them by pulling to refresh.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              await _repository.clearAll();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('All news cleared')),
              );
            },
            child: Text('Clear', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}