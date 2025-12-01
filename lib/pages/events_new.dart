import 'package:flutter/material.dart';
import '../../models/overview.dart';        // EventPost
import '../../models/campus_model.dart';   // Campus, fetchCampuses
import '../network/overview.dart';         // ApiClient, apiUrl

class NewEventPage extends StatefulWidget {
  const NewEventPage({super.key});

  @override
  State<NewEventPage> createState() => _NewEventPageState();
}

class _NewEventPageState extends State<NewEventPage> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();

  DateTime? _start;
  DateTime? _end;
  bool _saving = false;

  List<Campus> _campuses = [];
  Campus? _selectedCampus;

  @override
  void initState() {
    super.initState();
    _loadCampuses();
  }

  Future<void> _loadCampuses() async {
    final campuses = await fetchCampuses();
    setState(() {
      _campuses = campuses;
      if (_campuses.isNotEmpty) {
        _selectedCampus = _campuses.first;
      }
    });
  }

  Future<void> _pickStart() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      firstDate: now,
      lastDate: DateTime(now.year + 2),
      initialDate: _start ?? now,
    );
    if (date == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 9, minute: 0),
    );
    if (time == null) return;

    setState(() {
      _start = DateTime(date.year, date.month, date.day, time.hour, time.minute);
    });
  }

  Future<void> _pickEnd() async {
    final base = _start ?? DateTime.now();
    final date = await showDatePicker(
      context: context,
      firstDate: base,
      lastDate: DateTime(base.year + 2),
      initialDate: _end ?? base,
    );
    if (date == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 10, minute: 0),
    );
    if (time == null) return;

    setState(() {
      _end = DateTime(date.year, date.month, date.day, time.hour, time.minute);
    });
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_start == null || _end == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select start and end times')),
      );
      return;
    }
    if (_selectedCampus == null || _selectedCampus!.id == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select a campus')),
      );
      return;
    }

    setState(() => _saving = true);

    try {
      final event = EventNew(
        title: _titleController.text,
        description: _descriptionController.text,
        start: _start!,
        end: _end!,
        location: _locationController.text,
        campusId: _selectedCampus!.id,
      );

      final apiClient = ApiClient(baseURL: apiUrl);

      print('sending JSON: $event');
      final response = await apiClient.school.newEvents(event);
      final body = event.toJson(); // Map<String, dynamic> with proper keys
      print('sending Body: $body');
      final wo = body..remove('id');
      print('sending Without: $wo');


      print('status: ${response.statusCode}');
      print('body: ${response.body}');
      print('error: ${response.error}');

      if (!response.isSuccessful) {
        throw Exception('Create failed: ${response.statusCode}');
      }




      if (!mounted) return;

      Navigator.pop(context, event);
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save event: $e')),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Event')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (v) =>
                (v == null || v.isEmpty) ? 'Enter a title' : null,
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Location'),
              ),
              DropdownButtonFormField<Campus>(
                value: _selectedCampus,
                items: _campuses
                    .map(
                      (c) => DropdownMenuItem(
                    value: c,
                    child: Text(c.name ?? 'Campus ${c.id}'),
                  ),
                )
                    .toList(),
                onChanged: (value) => setState(() => _selectedCampus = value),
                decoration: const InputDecoration(labelText: 'Campus'),
              ),
              const SizedBox(height: 16),
              ListTile(
                title: Text(
                  _start == null ? 'Pick start date/time' : 'Start: $_start',
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: _pickStart,
              ),
              ListTile(
                title: Text(
                  _end == null ? 'Pick end date/time' : 'End: $_end',
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: _pickEnd,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saving ? null : _save,
                child: _saving
                    ? const CircularProgressIndicator()
                    : const Text('Create Event'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}