import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Flutter Demo',
      home : Scaffold (appBar: AppBar(title: const Center(child: Text('Aplikasi Saya'),
        ),
      ),
      body: const Center(child: Text('Hello, World'),
      ),
    ), 
    );
  }
}