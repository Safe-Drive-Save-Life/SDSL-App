import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sdsl/controller/notification_controller.dart';
import 'package:sdsl/pages/intro.dart';
import 'package:sdsl/firebase_options.dart';

void main() async {
  // 파이어베이스 처음 초기화 코드
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // MaterialApp 을 GetMaterialApp 으로 변경
    return GetMaterialApp(
      // 앱 실행과 동시에 NotificationController부터 실행되도록
      initialBinding: BindingsBuilder.put(() => NotificationController(), permanent: true),
      debugShowCheckedModeBanner: false,
      title: 'SDSL',
      home: Intro(),
    );
  }
}