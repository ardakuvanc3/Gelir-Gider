import 'package:flutter/material.dart';
import 'package:gelir_gider/views/settings.dart';
import 'package:provider/provider.dart';
import 'package:gelir_gider/views/homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(), // ThemeNotifier'ı başlat
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          title: 'Gelir & Gider',
          theme: themeNotifier.currentTheme,
          themeMode: ThemeMode.system, // Kullanıcının sistem tercihlerine göre tema belirlenir
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      },
    );
  }
}
