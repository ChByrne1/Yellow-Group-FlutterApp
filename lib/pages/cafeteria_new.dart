import 'package:flutter/material.dart';
import '../../models/overview.dart';      // CafeteriaItem
import '../network/overview.dart';       // ApiClient, apiUrl

class NewCafeteriaItemPage extends StatefulWidget {
  const NewCafeteriaItemPage({super.key});

  @override
  State<NewCafeteriaItemPage> createState() => _NewCafeteriaItemPageState();
}

class _NewCafeteriaItemPageState extends State<NewCafeteriaItemPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _iconNameController = TextEditingController();
  int? _category;

  bool _saving = false;

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _saving = true);

    try {
      final cafe = CafeteriaItem(
        // id left null so backend can assign
        category: _category,
        name: _nameController.text,
        description: _descriptionController.text,
        iconName: _iconNameController.text,
      );
final menu = CafeteriaMenu(menuItems: [cafe]);
      // TODO: call your POST endpoint here, for example:
      final apiClient = ApiClient(baseURL: apiUrl);
      await apiClient.school.newCafeteria(menu);



      if (!mounted) return;
      Navigator.pop(context, cafe); // return created item or just pop
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save item: $e')),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Cafeteria Item')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (v) =>
                (v == null || v.isEmpty) ? 'Enter a name' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 2,
              ),
              TextFormField(
                controller: _iconNameController,
                decoration: const InputDecoration(labelText: 'Icon name'),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<int>(
                initialValue: _category,
                decoration: const InputDecoration(labelText: 'Category'),
                items: const [
                  DropdownMenuItem(value: 1, child: Text('Side')),
                  DropdownMenuItem(value: 2, child: Text('Drink')),
                  DropdownMenuItem(value: 3, child: Text('Appetizer')),
                  DropdownMenuItem(value: 4, child: Text('Dessert')),
                ],
                onChanged: (value) => setState(() => _category = value),
                validator: (v) =>
                v == null ? 'Select a category' : null,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saving ? null : _save,
                child: _saving
                    ? const CircularProgressIndicator()
                    : const Text('Create Item'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}