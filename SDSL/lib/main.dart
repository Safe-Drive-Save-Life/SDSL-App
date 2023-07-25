import 'package:flutter/material.dart';
import 'package:safe_drive_save_life/pages/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SDSL',
      home: Intro());
  }
}