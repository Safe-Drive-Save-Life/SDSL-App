import 'dart:async';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool showPredictingMessage = true;

  @override
  void initState() {
    super.initState();
    // 3초마다 멘트 변경
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        showPredictingMessage = !showPredictingMessage;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // 배경색
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/loading.gif',
              width: 150,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF33CACB), // 글씨색
                fontWeight: FontWeight.bold,
              ),
              child: Text(
                showPredictingMessage
                    ? "고장을 예측하고 있어요."
                    : "잠시만 기다려주세요.",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
