import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ekle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'İsim'),
            ),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(labelText: 'Fiyat'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Güncellenen bilgileri kaydedin ve Profile sayfasına dönün
                Navigator.pop(context, {
                  'name': _nameController.text,
                  'fiyat': _priceController.text,
                });
              },
              child: const Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}
