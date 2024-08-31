import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gelir_gider/views/add_task.dart';
import 'package:gelir_gider/views/bills.dart';
import 'package:gelir_gider/views/edit_task.dart';
import 'package:gelir_gider/views/panel.dart';
import 'package:gelir_gider/views/premium.dart';
import 'package:gelir_gider/views/profile.dart';
import 'package:gelir_gider/views/settings.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddTask()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
      appBar: AppBar(
        title: const Text("Gelir Gider"),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu)
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop(); // Drawer'ı kapatır
                      },
                    ),
                  ),
                  const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40, // Boyutu küçültüyoruz
                          backgroundImage: AssetImage('assets/logo.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Arda Kuvanç",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text("ardakuvanc3@gmail.com", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' Profil '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' Gelir & Gider Paneli '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Panel()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.request_page),
              title: const Text(' Borçlar ve Faturalar '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bills()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Premiuma Yükselt '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Premium()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(' Ayarlar '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, right: 16.0, left: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Aylık Gelir: +43.000 ₺",
                    style: TextStyle(
                      fontSize: 18,
                      color: isDarkMode ? Colors.greenAccent : Colors.green, // Dark mode ve light mode renkleri
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Aylık Gider: -39.000 ₺",
                    style: TextStyle(
                      fontSize: 18,
                      color: isDarkMode ? Colors.redAccent : Colors.red, // Dark mode ve light mode renkleri
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Net Kâr: 19.000 ₺",
                style: TextStyle(
                  fontSize: 18,
                  color: isDarkMode ? Colors.lightBlueAccent : Colors.blue, // Dark mode ve light mode renkleri
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: isDarkMode ? Colors.grey[700] : Colors.grey, // Dark mode ve light mode renkleri
                thickness: 2.0,
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.payments),
                    title: const Text(' Maaş Ödemesi: +50.000 ₺ ', style: TextStyle(color: Colors.white),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditTask() ));
                    },
                  ),
                  SizedBox(height: 10),

                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(' Ev Kirası: -8.0000 ₺ ', style: TextStyle(color: Colors.white),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditTask() ));
                    },
                  ),
                  SizedBox(height: 10),

                  ListTile(
                    leading: const Icon(Icons.fastfood),
                    title: const Text(' Gıda ALışverişi: -2.0000 ₺ ', style: TextStyle(color: Colors.white),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditTask() ));
                    },
                  ),
                  SizedBox(height: 10),

                  ListTile(
                    leading: const Icon(Icons.computer),
                    title: const Text(' Yeni Bilgisayar: -40.000 ₺ ', style: TextStyle(color: Colors.white),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditTask() ));
                    },
                  ),
                  SizedBox(height: 10),

                  ListTile(
                    leading: const Icon(Icons.shopping_bag_outlined),
                    title: const Text(' Giyim Alışverişi: -5.000 ₺ ', style: TextStyle(color: Colors.white),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditTask() ));
                    },
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: const Icon(Icons.account_balance_wallet),
                    title: const Text(' Diğer: +50.000 ₺ ', style: TextStyle(color: Colors.white),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditTask() ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
