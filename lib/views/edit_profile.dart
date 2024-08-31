import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bankController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Burada mevcut kullanıcı bilgilerini doldurabilirsiniz
    _nameController.text = 'Arda Kuvanç';
    _emailController.text = 'ardakuvanc3@gmail.com';
    _bankController.text = 'AkBank, VakıfBank';
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _bankController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profili Düzenle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Kullanıcı Adı'),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'E-posta'),
            ),
            TextField(
              controller: _bankController,
              decoration: const InputDecoration(labelText: 'Bankalar'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Güncellenen bilgileri kaydedin ve Profile sayfasına dönün
                Navigator.pop(context, {
                  'name': _nameController.text,
                  'email': _emailController.text,
                  'banks': _bankController.text,
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
