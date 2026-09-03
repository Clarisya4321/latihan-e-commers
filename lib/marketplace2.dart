import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FlashSale(),
    );
  }
}

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios, size: 18),
                      SizedBox(width: 5),
                      Text('Flash Sale', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.shopping_cart_outlined),
                      SizedBox(width: 5),
                      Text('(3)'),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(),

              // BANNER
              Container(
                width: double.infinity,
                height: 145,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ICON PETIR + JUDUL
                    Row(
                      children: const [
                        Icon(Icons.flash_on, size: 22),
                        SizedBox(width: 5),
                        Text(
                          'FLASH SALE 9.9',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      'Berakhir dalam 02:15:40',
                      style: TextStyle(fontSize: 14),
                    ),

                    const Spacer(),

                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '2. Banner Promo',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // JUDUL PRODUK
              const Text(
                'Daftar Produk',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 15),

              // PRODUK
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  produk(
                    '50% OFF',
                    'GAMBAR 1',
                    'Sepatu Olahraga',
                    'Rp 150.000',
                    'Rp 75.000',
                  ),

                  const SizedBox(width: 15),

                  produk(
                    '30% OFF',
                    'GAMBAR 2',
                    'Raket Badminton',
                    'Rp 300.000',
                    'Rp 210.000',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // KARTU PRODUK
  Widget produk(
    String diskon,
    String gambar,
    String nama,
    String hargaLama,
    String harga,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DISKON + FAVORITE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  diskon,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.favorite_border, size: 20),
              ],
            ),

            const SizedBox(height: 20),

            // GAMBAR
            Center(
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(child: Text(gambar)),
              ),
            ),

            const SizedBox(height: 15),

            // NAMA
            Text(nama, style: const TextStyle(fontWeight: FontWeight.w500)),

            const SizedBox(height: 8),

            // HARGA LAMA
            Text(
              hargaLama,
              style: const TextStyle(
                color: Color.fromARGB(255, 203, 202, 202),
                decoration: TextDecoration.lineThrough,
              ),
            ),

            // HARGA BARU
            Text(
              harga,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            const SizedBox(height: 12),

            // TOMBOL
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('+ Keranjang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
