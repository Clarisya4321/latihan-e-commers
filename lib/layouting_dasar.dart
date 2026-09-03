import 'package:flutter/material.dart';

class layoutingdasar extends StatelessWidget {
  const layoutingdasar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Baris atas'),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('Berjajar ke samping'),
                ),
              ],
            ),
            Container(
              width: 100,
              height: 40,
              color: const Color.fromARGB(255, 183, 58, 118),
              child: const Center(
                child: Text('Container', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
