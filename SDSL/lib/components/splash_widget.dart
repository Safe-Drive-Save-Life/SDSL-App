import 'package:flutter/material.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/sdsl_splash_screen.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
