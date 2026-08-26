import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino extends StatelessWidget {
  const Cupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contoh Cupertino')),
        body: Container(
          margin: const EdgeInsets.only(top: 30),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              CupertinoButton(
                child: const Text('Contoh button'),
                onPressed: () {},
              ),
              const CupertinoActivityIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}