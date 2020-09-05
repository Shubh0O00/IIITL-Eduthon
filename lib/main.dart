import 'package:flutter/material.dart';
import './HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sim',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Lab Simulator'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: MyHomePage(),
      ),
    );
  }
}
