import 'package:flutter/material.dart';


class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium İçerikler'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
             PremiumContentCard(
              title: ' Reklamları Kaldırın ',
              description: 'Reklamsız olarak uygulamayı kullanabilirsiniz..',
              price: '49,99 ₺',
              imageUrl: 'assets/noads.png', // Buraya içerik resmi ekleyin
              id: 0,
            ),
            SizedBox(height: 16.0),
            PremiumContentCard(
              title: ' Gelişmiş Rapor ve Analizler ',
              description: 'Daha gelişmiş tablolar ve analizleri kullanabilirsiniz.',
              price: '99,99 ₺',
              imageUrl: 'assets/grafik.png', // Buraya içerik resmi ekleyin
              id: 1,
            ),
            SizedBox(height: 16.0),
            PremiumContentCard(
              title: 'Ekstra Finansal Araçlar',
              description: 'Uygulamamızda tüm ekstra finansal araçları kullanmanızı sağlar.',
              price: '149,99 ₺',
              imageUrl: 'assets/finans.jpg', // Buraya içerik resmi ekleyin
              id: 2,
            ),
            SizedBox(height: 16.0),
            PremiumContentCard(
              title: 'Borsa Takibi',
              description: 'Uygulamamızda Borsa İstanbuldaki hisselerini kontrol etmenizi sağlar',
              price: '149,99 ₺',
              imageUrl: 'assets/borsa.jpeg', // Buraya içerik resmi ekleyin
              id: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class PremiumContentCard extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final String price;
  final String imageUrl;

  const PremiumContentCard({
    Key? key,
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          // İçerik Resmi
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 150.0,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Başlık
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                // Açıklama
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 16.0),
                // Fiyat ve Satın Alma Düğmesi
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Satın alma işlemi yapılacak yer
                      },
                      child: Text('Satın Al'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
