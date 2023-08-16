import 'package:flutter/material.dart';
import 'package:sdsl/pages/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SDSL',
        home: Intro());
  }
}