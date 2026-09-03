import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlashSale(),
    );
  }
}

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  int detik = 8150;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (detik > 0) {
        setState(() {
          detik--;
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  String waktu() {
    int jam = detik ~/ 3600;
    int menit = (detik % 3600) ~/ 60;
    int det = detik % 60;

    return '${jam.toString().padLeft(2, '0')}:'
        '${menit.toString().padLeft(2, '0')}:'
        '${det.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
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
                      Text(
                        'Flash Sale',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

              const SizedBox(height: 15),
              const Divider(),

              // BANNER
              Container(
                height: 155,
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.flash_on,
                                color: Colors.amber,
                                size: 25,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'FLASH SALE 9.9',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          const Text(
                            'Berakhir dalam',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            waktu(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // GAMBAR BANNER
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1607083206968-13611e3d76db?w=500',
                        width: 130,
                        height: 115,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // JUDUL
              const Text(
                'Daftar Produk',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              // PRODUK
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    produk(
                      '50% OFF',
                      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
                      'Sepatu Olahraga',
                      'Rp 150.000',
                      'Rp 75.000',
                    ),

                    const SizedBox(width: 12),

                    produk(
                      '30% OFF',
                      'https://images.unsplash.com/photo-1626224583764-f87db24ac4ea?w=500',
                      'Raket Badminton',
                      'Rp 300.000',
                      'Rp 210.000',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget produk(
    String diskon,
    String gambar,
    String nama,
    String hargaLama,
    String harga,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DISKON
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    diskon,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.favorite_border),
              ],
            ),

            const SizedBox(height: 10),

            // GAMBAR
            Image.network(
              gambar,
              height: 125,
              width: double.infinity,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 8),

            // NAMA
            Text(
              nama,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),

            const SizedBox(height: 5),

            // HARGA LAMA
            Text(
              hargaLama,
              style: const TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),

            // HARGA BARU
            Text(
              harga,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            const Spacer(),

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
