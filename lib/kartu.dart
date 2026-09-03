import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widget Flutter',
      home: ProfilPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kartu Siswa")),
      body: Center(
        child: Row(children: [MyProfileCardPage(), MyProfileCardPage()]),
      ),
    );
  }
}

class MyProfileCardPage extends StatefulWidget {
  const MyProfileCardPage({super.key});

  @override
  State<MyProfileCardPage> createState() => _MyProfileCardPageState();
}

class _MyProfileCardPageState extends State<MyProfileCardPage> {
  bool isFavorite1 = false;
  bool isFavorite2 = false;

  void toggleFavorite1() {
    setState(() {
      isFavorite1 = !isFavorite1;
    });
  }

  void toggleFavorite2() {
    setState(() {
      isFavorite2 = !isFavorite2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 250, //Children: Container1,container2
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Fabriyan Fernando',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text('Siswa Kelas XI RPL 7'),
                const Text('Febriyan@gmail.com'),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: toggleFavorite1,
                        child: Text(
                          isFavorite1 ? 'Hapus Favorite' : 'Tambah Favorit',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  isFavorite1 ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.deepPurple,
                child: Badge(
                  label: const Text('1'),
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.notifications,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
