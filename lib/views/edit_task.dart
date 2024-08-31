import 'package:flutter/material.dart';

class EditTask extends StatefulWidget {
  const EditTask({super.key});

  @override
  _EditTaskState createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Burada mevcut kullanıcı bilgilerini doldurabilirsiniz
    _nameController.text = 'Maaş Ödemesi';
    _priceController.text = '50.000 ₺';
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
        title: const Text("Düzenle"),
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
                  'email': _priceController.text,
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
