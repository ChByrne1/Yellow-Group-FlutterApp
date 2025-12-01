import 'package:flutter/material.dart';
import '../../models/overview.dart';        // EventEdit
import '../../models/campus_model.dart';   // Campus, fetchCampuses
import '../network/overview.dart';         // ApiClient, apiUrl

class EditEventPage extends StatefulWidget {
  final EventEdit event;

  const EditEventPage({super.key, required this.event});

  @override
  State<EditEventPage> createState() => _EditEventPageState();
}

class _EditEventPageState extends State<EditEventPage> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _locationController;

  DateTime? _start;
  DateTime? _end;
  bool _saving = false;

  List<Campus> _campuses = [];
  Campus? _selectedCampus;

  @override
  void initState() {
    super.initState();

    // Prefill from the incoming EventEdit
    _titleController = TextEditingController(text: widget.event.title);
    _descriptionController =
        TextEditingController(text: widget.event.description);
    _locationController =
        TextEditingController(text: widget.event.location);

    _start = widget.event.start;
    _end = widget.event.end;

    _loadCampuses();
  }

  Future<void> _loadCampuses() async {
    final campuses = await fetchCampuses();
    setState(() {
      _campuses = campuses;
      if (_campuses.isNotEmpty) {
        _selectedCampus = _campuses.firstWhere(
              (c) => c.id == widget.event.campusId,
          orElse: () => _campuses.first,
        );
      }
    });
  }

  Future<void> _pickStart() async {
    final now = DateTime.now();
    final initial = _start ?? now;

    final date = await showDatePicker(
      context: context,
      firstDate: now,
      lastDate: DateTime(now.year + 2),
      initialDate: initial,
    );
    if (date == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initial),
    );
    if (time == null) return;

    setState(() {
      _start = DateTime(date.year, date.month, date.day, time.hour, time.minute);
    });
  }

  Future<void> _pickEnd() async {
    final base = _start ?? DateTime.now();
    final initial = _end ?? base;

    final date = await showDatePicker(
      context: context,
      firstDate: base,
      lastDate: DateTime(base.year + 2),
      initialDate: initial,
    );
    if (date == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initial),
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

    if (widget.event.id == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cannot edit event without an Id')),
      );
      return;
    }

    setState(() => _saving = true);

    try {
      final edit = widget.event.copyWith(
        title: _titleController.text,
        description: _descriptionController.text,
        start: _start,
        end: _end,
        campusId: _selectedCampus!.id,
        location: _locationController.text,
        timestamp: widget.event.timestamp,
      );

      final apiClient = ApiClient(baseURL: apiUrl);

      final json = edit.toJson();
      print('EDIT JSON: $json');

      final response = await apiClient.school.updateEvent(edit.id!, edit);

      print('EDIT RESPONSE status: ${response.statusCode}');
      print('EDIT RESPONSE body runtimeType: ${response.body.runtimeType}');
      print('EDIT RESPONSE body: ${response.body}');
      print('EDIT RESPONSE error: ${response.error}');

      if (!response.isSuccessful) {
        throw Exception('Update failed: ${response.statusCode}');
      }

      if (!mounted) return;

      Navigator.pop(context, edit);
    } catch (e, st) {
      // This will show you the exact cause and location
      print('EDIT EXCEPTION: $e');
      print('EDIT STACK: $st');

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
      appBar: AppBar(title: const Text('Edit Event')),
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
                onChanged: (value) =>
                    setState(() => _selectedCampus = value),
                decoration: const InputDecoration(labelText: 'Campus'),
              ),
              const SizedBox(height: 16),
              ListTile(
                title: Text(
                  _start == null
                      ? 'Pick start date/time'
                      : 'Start: $_start',
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: _pickStart,
              ),
              ListTile(
                title: Text(
                  _end == null
                      ? 'Pick end date/time'
                      : 'End: $_end',
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: _pickEnd,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration:
                const InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saving ? null : _save,
                child: _saving
                    ? const CircularProgressIndicator()
                    : const Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
