import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyApp'), backgroundColor: Colors.red),

      body: ListView(
        children: [
          // MENU
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('BERITA TERBARU'),
              Text('PERTANDINGAN HARI INI'),
            ],
          ),

          const SizedBox(height: 10),

          // BERITA UTAMA
          Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1579952363873-27f3bade9f55',
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 8),

                const Text(
                  'Costa Mendekat Ke Palmeiras',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 5),

                const Text('Transfer', style: TextStyle(color: Colors.purple)),
              ],
            ),
          ),

          const Divider(),

          // BERITA 1
          berita('Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),

          // BERITA 2
          berita('Berita Sepak Bola Terbaru Hari Ini'),

          // BERITA 3
          berita('Hasil Pertandingan Terbaru'),
        ],
      ),
    );
  }

  Widget berita(String judul) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 80,
            color: Colors.grey,
            child: const Icon(Icons.image, size: 40),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              judul,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
