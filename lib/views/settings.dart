import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gelir_gider/views/pay_history.dart';
import 'package:provider/provider.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = true; // Başlangıçta dark mode

  bool get isDarkMode => _isDarkMode;

  ThemeData get currentTheme => _isDarkMode ? ThemeData.dark() : ThemeData.light();

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Üyelik Durumu
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Üyelik Durumu'),
              trailing: const Text("Premium", style: TextStyle(fontSize: 16, color: Colors.yellowAccent),),
              onTap: null,
            ),
            const Divider(),

            // Satın Alma Geçmişi
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Satın Alma Geçmişi'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PayHistory()));
              },
            ),
            const Divider(),
            // Dark Mode - Light Mode
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Light Mode'),
                Consumer<ThemeNotifier>(
                  builder: (context, themeNotifier, child) {
                    return Switch(
                      value: themeNotifier.isDarkMode,
                      onChanged: (value) {
                        themeNotifier.toggleTheme(); // Tema değişikliği
                      },
                    );
                  },
                ),
                const Text('Dark Mode'),
              ],
            ),
            const Divider(),

            // Boşluk bırak
            SizedBox(height: 16.0),

            // Veriyi Sil butonu
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Veriyi Sil butonuna tıklanıldığında yapılacak işlemler
                },
                child: const Text('Veriyi Sil'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
