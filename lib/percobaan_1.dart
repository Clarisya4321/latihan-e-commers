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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const makanan = [
    [
      'Dubai Chewy Cookie',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNxPlvFhHedRXWknmjA2hbqoeJlyTE9gRdxFDvTg7DlA&s=10',
    ],
    [
      'Brownies',
      'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=800&q=80&auto=format&fit=crop',
    ],
    [
      'Cheese Cake',
      'https://sallysbakingaddiction.com/wp-content/uploads/2022/10/classic-cheesecake-recipe.jpg',
    ],
    [
      'Ice Cream',
      'https://funcakes.com/content/uploads/2023/06/Ice-cream-recipe-600x450.webp',
    ],
    [
      'Macaron',
      'https://images.unsplash.com/photo-1569864358642-9d1684040f43?w=800&q=80&auto=format&fit=crop',
    ],
    [
      'Donat',
      'https://images.unsplash.com/photo-1551024506-0bccd828d307?w=800&q=80&auto=format&fit=crop',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // HEADER
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 12),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.restaurant,
                        color: Color.fromARGB(255, 243, 242, 240),
                        size: 24,
                      ),
                    ),

                    const SizedBox(width: 10),

                    const Text(
                      'Cookpad',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5a1111),
                      ),
                    ),

                    const Spacer(),

                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 6),
                        ],
                      ),
                      child: const Icon(Icons.notifications_none, size: 27),
                    ),
                  ],
                ),
              ),

              // SEARCH
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(0xfffffaf5),
                  border: Border.all(color: Colors.orange.shade100),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 15),

                    Icon(Icons.search, size: 25, color: Colors.grey),

                    SizedBox(width: 10),

                    Text(
                      'Ketik bahan-bahan...',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // BANNER
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 190,
                width: double.infinity,

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),

                  child: Image.network(
                    'https://images.unsplash.com/photo-1488477181946-6428a0291777?w=1200&q=80&auto=format&fit=crop',
                    fit: BoxFit.cover,

                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.orange.shade100,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.restaurant,
                                size: 45,
                                color: Colors.orange,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Banner Makanan',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 22),

              // JUDUL
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pencarian Populer',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3d2118),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // GRID MAKANAN
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),

                  itemCount: makanan.length,

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 14,
                    childAspectRatio: 1.25,
                  ),

                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(14),

                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          // GAMBAR MAKANAN
                          Image.network(
                            makanan[index][1],
                            fit: BoxFit.cover,

                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey.shade200,
                                child: const Icon(
                                  Icons.restaurant,
                                  size: 40,
                                  color: Colors.grey,
                                ),
                              );
                            },
                          ),

                          // GRADIENT
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Color.fromARGB(190, 0, 0, 0),
                                ],
                              ),
                            ),
                          ),

                          // NAMA MAKANAN
                          Positioned(
                            left: 10,
                            right: 10,
                            bottom: 10,

                            child: Text(
                              makanan[index][0],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          // TOMBOL FAVORIT
                          Positioned(
                            top: 8,
                            right: 8,

                            child: Container(
                              width: 32,
                              height: 32,

                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                shape: BoxShape.circle,
                              ),

                              child: const Icon(
                                Icons.favorite_border,
                                size: 19,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
