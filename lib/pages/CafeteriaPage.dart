import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import '../models/cafeteria_item.dart'; // Import the model
class CafeteriaPage extends StatefulWidget {
  const CafeteriaPage({super.key});

  @override
  State<CafeteriaPage> createState() => _CafeteriaPageState();
}

class _CafeteriaPageState extends State<CafeteriaPage> {
  late Box<CafeteriaItem> _itemsBox;
  String _selectedCategory = 'All';

  final List<String> _categories = [
    'All',
    'Main Course',
    'Sides',
    'Drinks',
    'Desserts',
    'Snacks',
  ];

  @override
  void initState() {
    super.initState();
    _itemsBox = Hive.box<CafeteriaItem>('cafeteria');

    // Add sample data if empty
    if (_itemsBox.isEmpty) {
      _addSampleData();
    }
  }

  void _addSampleData() {
    final sampleItems = [
      CafeteriaItem(
        id: 1,
        name: 'Cheeseburger',
        description: 'Classic beef burger with cheese, lettuce, and tomato',
        price: 6.99,
        category: 'Main Course',
      ),
      CafeteriaItem(
        id: 2,
        name: 'French Fries',
        description: 'Crispy golden fries',
        price: 2.99,
        category: 'Sides',
      ),
      CafeteriaItem(
        id: 3,
        name: 'Soda',
        description: 'Cold refreshing beverage',
        price: 1.99,
        category: 'Drinks',
      ),
      CafeteriaItem(
        id: 4,
        name: 'Chocolate Cake',
        description: 'Rich chocolate layer cake',
        price: 3.99,
        category: 'Desserts',
      ),
    ];

    for (var item in sampleItems) {
      _itemsBox.put(item.id, item);
    }
  }

  List<CafeteriaItem> _getFilteredItems() {
    if (_selectedCategory == 'All') {
      return _itemsBox.values.toList();
    }
    return _itemsBox.values
        .where((item) => item.category == _selectedCategory)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafeteria Menu'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'clear') {
                _showClearDialog();
              }
            },
            itemBuilder: (context) => [
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
      body: Column(
        children: [
          // Category filter
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                final category = _categories[index];
                final isSelected = category == _selectedCategory;

                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FilterChip(
                    label: Text(category),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                    selectedColor: Colors.orange,
                    checkmarkColor: Colors.white,
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey[800],
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ),

          // Items list
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: _itemsBox.listenable(),
              builder: (context, Box<CafeteriaItem> box, _) {
                final items = _getFilteredItems();

                if (items.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.restaurant_menu,
                          size: 64,
                          color: Colors.grey[400],
                        ),
                        SizedBox(height: 16),
                        Text(
                          'No items in menu',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: _addSampleData,
                          child: Text('Add Sample Items'),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return _buildItemCard(item);
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreateDialog,
        child: Icon(Icons.add),
        tooltip: 'Add Menu Item',
      ),
    );
  }

  Widget _buildItemCard(CafeteriaItem item) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => _showDetailsDialog(item),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              // Icon based on category
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: _getCategoryColor(item.category).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _getCategoryIcon(item.category),
                  color: _getCategoryColor(item.category),
                  size: 32,
                ),
              ),
              SizedBox(width: 16),

              // Item info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (!item.isAvailable)
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'OUT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      item.description,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            item.category,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$${item.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Edit button
              IconButton(
                icon: Icon(Icons.edit, color: Colors.blue),
                onPressed: () => _showEditDialog(item),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Main Course':
        return Icons.restaurant;
      case 'Sides':
        return Icons.fastfood;
      case 'Drinks':
        return Icons.local_drink;
      case 'Desserts':
        return Icons.cake;
      case 'Snacks':
        return Icons.cookie;
      default:
        return Icons.restaurant_menu;
    }
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'Main Course':
        return Colors.red;
      case 'Sides':
        return Colors.orange;
      case 'Drinks':
        return Colors.blue;
      case 'Desserts':
        return Colors.pink;
      case 'Snacks':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  // ==================== CREATE ====================
  void _showCreateDialog() {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    final priceController = TextEditingController();
    String selectedCategory = 'Main Course';

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text('Add Menu Item'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Item Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.restaurant_menu),
                  ),
                  textCapitalization: TextCapitalization.words,
                ),
                SizedBox(height: 12),
                TextField(
                  controller: descController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.description),
                  ),
                  maxLines: 2,
                ),
                SizedBox(height: 12),
                TextField(
                  controller: priceController,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.attach_money),
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
                SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  value: selectedCategory,
                  decoration: InputDecoration(
                    labelText: 'Category',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.category),
                  ),
                  items: _categories
                      .where((cat) => cat != 'All')
                      .map((cat) => DropdownMenuItem(
                    value: cat,
                    child: Text(cat),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setDialogState(() {
                      selectedCategory = value!;
                    });
                  },
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
              onPressed: () {
                if (nameController.text.isEmpty || priceController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please fill in name and price')),
                  );
                  return;
                }

                final price = double.tryParse(priceController.text);
                if (price == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a valid price')),
                  );
                  return;
                }

                // Generate new ID
                final maxId = _itemsBox.isEmpty
                    ? 0
                    : _itemsBox.values.map((i) => i.id).reduce((a, b) => a > b ? a : b);

                final newItem = CafeteriaItem(
                  id: maxId + 1,
                  name: nameController.text,
                  description: descController.text,
                  price: price,
                  category: selectedCategory,
                );

                _itemsBox.put(newItem.id, newItem);

                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${newItem.name} added to menu!'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }

  // ==================== READ ====================
  void _showDetailsDialog(CafeteriaItem item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(item.name),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(_getCategoryIcon(item.category),
                    color: _getCategoryColor(item.category)),
                SizedBox(width: 8),
                Text(
                  item.category,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _getCategoryColor(item.category),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 4),
            Text(item.description),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${item.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: item.isAvailable ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    item.isAvailable ? 'Available' : 'Out of Stock',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showEditDialog(item);
            },
            child: Text('Edit'),
          ),
        ],
      ),
    );
  }

  // ==================== UPDATE ====================
  void _showEditDialog(CafeteriaItem item) {
    final nameController = TextEditingController(text: item.name);
    final descController = TextEditingController(text: item.description);
    final priceController = TextEditingController(text: item.price.toString());
    String selectedCategory = item.category;
    bool isAvailable = item.isAvailable;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: Text('Edit Menu Item'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Item Name',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.restaurant_menu),
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  controller: descController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.description),
                  ),
                  maxLines: 2,
                ),
                SizedBox(height: 12),
                TextField(
                  controller: priceController,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.attach_money),
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
                SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  value: selectedCategory,
                  decoration: InputDecoration(
                    labelText: 'Category',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.category),
                  ),
                  items: _categories
                      .where((cat) => cat != 'All')
                      .map((cat) => DropdownMenuItem(
                    value: cat,
                    child: Text(cat),
                  ))
                      .toList(),
                  onChanged: (value) {
                    setDialogState(() {
                      selectedCategory = value!;
                    });
                  },
                ),
                SizedBox(height: 12),
                SwitchListTile(
                  title: Text('Available'),
                  subtitle: Text(isAvailable ? 'In stock' : 'Out of stock'),
                  value: isAvailable,
                  onChanged: (value) {
                    setDialogState(() {
                      isAvailable = value;
                    });
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _showDeleteDialog(item);
              },
              child: Text('Delete', style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isEmpty || priceController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please fill in name and price')),
                  );
                  return;
                }

                final price = double.tryParse(priceController.text);
                if (price == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a valid price')),
                  );
                  return;
                }

                item.name = nameController.text;
                item.description = descController.text;
                item.price = price;
                item.category = selectedCategory;
                item.isAvailable = isAvailable;
                item.save();

                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${item.name} updated!'),
                    backgroundColor: Colors.blue,
                  ),
                );
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }

  // ==================== DELETE ====================
  void _showDeleteDialog(CafeteriaItem item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.warning, color: Colors.orange),
            SizedBox(width: 8),
            Text('Delete Item?'),
          ],
        ),
        content: Text('Are you sure you want to delete "${item.name}" from the menu?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              _itemsBox.delete(item.id);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${item.name} deleted'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
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
        title: Text('Clear All Items?'),
        content: Text('This will delete all menu items.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              _itemsBox.clear();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('All items cleared')),
              );
            },
            child: Text('Clear', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}