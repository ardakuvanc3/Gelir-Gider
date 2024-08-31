import 'package:flutter/material.dart';
import 'package:gelir_gider/views/settings.dart';
import 'package:provider/provider.dart';

class Bills extends StatefulWidget {
  const Bills({super.key});

  @override
  _BillsState createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  final Map<String, bool> _isChecked = {
    'evKira': false,
    'evTaksit': false,
    'telefonFatura': false,
    'telefonTaksit': false,
  };

  void _showPaymentDialog(String key) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ödendi mi?'),
          content: Text('Ödendi olarak işaretleyecek misiniz?'),
          actions: <Widget>[
            TextButton(
              child: Text('Hayır'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Evet'),
              onPressed: () {
                setState(() {
                  _isChecked[key] = !_isChecked[key]!;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;

    return Scaffold(
      appBar: AppBar(title: Text("Faturalar & Borçlar")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, right: 16.0, left: 16.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Aylık Fatura Gideri: -43.000 ₺",
                    style: TextStyle(
                      fontSize: 18,
                      color: isDarkMode ? Colors.redAccent : Colors.red,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Aylık Borç Gideri: -39.000 ₺",
                    style: TextStyle(
                      fontSize: 18,
                      color: isDarkMode ? Colors.redAccent : Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(
                color: isDarkMode ? Colors.grey[700] : Colors.grey,
                thickness: 2.0,
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(' Ev Kirası: 1500 ₺ ', style: TextStyle(fontSize: 18)),
                onTap: () => _showPaymentDialog('evKira'),
                trailing: Checkbox(
                  value: _isChecked['evKira'],
                  onChanged: (bool? newValue) {
                    _showPaymentDialog('evKira');
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_work),
                title: const Text(' Ev Taksidi: 5500 ₺ ', style: TextStyle(fontSize: 18)),
                onTap: () => _showPaymentDialog('evTaksit'),
                trailing: Checkbox(
                  value: _isChecked['evTaksit'],
                  onChanged: (bool? newValue) {
                    _showPaymentDialog('evTaksit');
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text(' Telefon Faturası: 800 ₺ ', style: TextStyle(fontSize: 18)),
                onTap: () => _showPaymentDialog('telefonFatura'),
                trailing: Checkbox(
                  value: _isChecked['telefonFatura'],
                  onChanged: (bool? newValue) {
                    _showPaymentDialog('telefonFatura');
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.phone_iphone_sharp),
                title: const Text(' Telefon Taksidi: 900 ₺ ', style: TextStyle(fontSize: 18)),
                onTap: () => _showPaymentDialog('telefonTaksit'),
                trailing: Checkbox(
                  value: _isChecked['telefonTaksit'],
                  onChanged: (bool? newValue) {
                    _showPaymentDialog('telefonTaksit');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
