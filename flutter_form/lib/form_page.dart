import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // Controller untuk TextField
  final TextEditingController _textController = TextEditingController();

  // State untuk DropdownButton
  String _selectedDropdownValue = 'Pilihan 1';
  final List<String> _dropdownItems = ['Pilihan 1', 'Pilihan 2', 'Pilihan 3'];

  // State untuk Switch
  bool _switchValue = false;

  // State untuk Radio
  String _selectedRadio = 'radio1';

  // State untuk Checkbox
  bool _checkboxValue = false;

  // State untuk DatePicker
  DateTime _selectedDate = DateTime.now();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  // Fungsi untuk menampilkan DatePicker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  // Fungsi untuk menampilkan Dialog
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog Contoh'),
          content: const Text('Ini adalah contoh dialog di Flutter.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  // Fungsi untuk menampilkan BottomSheet
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Bottom Sheet',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text('Ini adalah contoh bottom sheet di Flutter.'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Tutup'),
              ),
            ],
          ),
        );
      },
    );
  }

  // Fungsi untuk menampilkan Snackbar
  void _showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ini adalah contoh snackbar!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Flutter')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField
            const Text(
              'TextField:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: 'Masukkan teks',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // DropdownButton
            const Text(
              'DropdownButton:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _selectedDropdownValue,
              isExpanded: true,
              items:
                  _dropdownItems.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedDropdownValue = newValue;
                  });
                }
              },
            ),
            const SizedBox(height: 16),

            // Switch
            Row(
              children: [
                const Text(
                  'Switch:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Switch(
                  value: _switchValue,
                  onChanged: (bool value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Radio
            const Text('Radio:', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                Radio<String>(
                  value: 'radio1',
                  groupValue: _selectedRadio,
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        _selectedRadio = value;
                      });
                    }
                  },
                ),
                const Text('Pilihan 1'),
                Radio<String>(
                  value: 'radio2',
                  groupValue: _selectedRadio,
                  onChanged: (String? value) {
                    if (value != null) {
                      setState(() {
                        _selectedRadio = value;
                      });
                    }
                  },
                ),
                const Text('Pilihan 2'),
              ],
            ),
            const SizedBox(height: 16),

            // Checkbox
            Row(
              children: [
                Checkbox(
                  value: _checkboxValue,
                  onChanged: (bool? value) {
                    if (value != null) {
                      setState(() {
                        _checkboxValue = value;
                      });
                    }
                  },
                ),
                const Text('Checkbox'),
              ],
            ),
            const SizedBox(height: 16),

            // DatePicker
            const Text(
              'DatePicker:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            OutlinedButton(
              onPressed: () => _selectDate(context),
              child: Text(
                'Tanggal Terpilih: ${_selectedDate.toString().split(' ')[0]}',
              ),
            ),
            const SizedBox(height: 16),

            // Tombol-tombol untuk menampilkan Dialog, BottomSheet, dan Snackbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _showDialog,
                  child: const Text('Dialog'),
                ),
                ElevatedButton(
                  onPressed: _showBottomSheet,
                  child: const Text('BottomSheet'),
                ),
                ElevatedButton(
                  onPressed: _showSnackbar,
                  child: const Text('Snackbar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
