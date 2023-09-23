import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sdsl/main.dart';

class NotificationController extends GetxController {
  // 메시징 서비스 기본 객체 생성
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  @override
  void onInit() async {
    // 첫 빌드 시, 권한 확인하기
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    // 확인용 출력문
    print(settings.authorizationStatus);
    print("권한 확인 완료 !!");

    _getToken();
    _onMessage();
    super.onInit();
  }

  // 디바이스 고유 토큰을 얻기 위한 메소드, 처음 한번만 사용해서 토큰을 확보
  // 이는 파이어베이스 콘솔에서 손쉽게 디바이스에 테스팅을 할 때 쓰임.
  void _getToken() async {
    // 토큰 받아와서 저장
    String? token = await messaging.getToken();
    try {
      print("토큰 : $token");
    } catch(e) {}
  }

  // 안드로이드에서 foreground 알림 위한 flutter_local_notification 라이브러리
  // 1. channel 생성 (우리 알림 따로 전달해 줄 채널 직접 만듦.)
  // 2. 그 채널을 우리의 메인 채널로 정해줄 플러그인 만들어주기

  // 1.
  final AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description: 'This channel is used for important notifications.', // description
    importance: Importance.max,
  );

  // 2.
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  void _onMessage() async {
    // * local_notification 관련한 플러그인 활용 *
    //
    // 1. 위에서 생성한 channel 을 플러그인 통해 메인 채널로 설정.
    // 2. 플러그인을 초기화하여 추가 설정.

    // 1.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    // 2. onDidReceiveNotificationResponse : 해당 알림 눌렀을 때의 콜백
    await flutterLocalNotificationsPlugin.initialize(
        const InitializationSettings(
            android: AndroidInitializationSettings('@mipmap/ic_launcher'), iOS: DarwinInitializationSettings()),
        onDidReceiveNotificationResponse: (NotificationResponse details) async {
          // 알림 눌렀을 때 이동 구현 (현재는 그냥 앱 종료 시점으로)
      }
    );

    // * onMessage 설정 - 이것만 설정해줘도 알림을 받아낼 수 있음. *
    // 1. 콘솔에서 발송하는 메시지를 message 파라미터로 받아옴.
    // 메시지가 올 때마다 listen 내부 콜백이 실행됨.
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      // android 일 때만 flutterLocalNotification 을 대신 보여주는 거임. 그래서 아래와 같은 조건문 설정.
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description
            ),
          ),

          // 넘겨줄 데이터가 있으면 아래 코드를 써주면 됨.
          // payload: message.data['argument']
        );
      }

      // 확인용 출력문
      print('foreground 상황에서 메시지를 받았음 !!');
      // 데이터 유무 확인
      print('Message data: ${message.data}');
      // notification 유무 확인
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification!.body}');
      }
    });
  }

}
