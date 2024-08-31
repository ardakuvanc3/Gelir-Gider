import 'package:flutter/material.dart';

class PayHistory extends StatelessWidget {
  const PayHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Satın Alma Geçmişi")),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Divider(color: Colors.grey, thickness: 2.0),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text(' Premium Üyelik: 49.99 ₺ ', style: TextStyle(fontSize: 18)),
              ),
            Divider(color: Colors.grey, thickness: 2.0),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text(' Borsa Takibi : 149.99 ₺ ', style: TextStyle(fontSize: 18)),
            ),
            Divider(color: Colors.grey, thickness: 2.0),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text(' Ekstra Finansal Araçlar : 149.99 ₺ ', style: TextStyle(fontSize: 18)),
            ),
            Divider(color: Colors.grey, thickness: 2.0),

          ],
        ),
      ),
    );
  }
}
