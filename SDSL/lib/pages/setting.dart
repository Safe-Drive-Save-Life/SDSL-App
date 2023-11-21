import 'dart:async';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool notificationEnabled = false; // 초기 상태 : 알림 비활성화
  List<int> countList = [0, 0, 0, 0, 0];

  // 정보 다이얼로그를 표시하는 함수
  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('주의사항'),
          content: Text(
              '- 배터리 수명이 감소할 수 있어요.\n- 다른 앱의 실행이 느려질 수 있어요.\n- 발열 현상이 나타날 수 있어요.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('닫기'),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();

    // 앱을 시작할 때 이전 설정 불러오기
    _loadSettings();
  }

  void _loadSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? savedNotificationEnabled = prefs.getBool("notificationEnabled");
    if (savedNotificationEnabled != null) {
      setState(() {
        // 앱을 처음 실행하는 경우에만 설정 불러오기
        notificationEnabled = savedNotificationEnabled;
      });
    }
  }

  Timer? timer;

  // 스위치 상태에 따라 푸시 알림을 활성화 또는 비활성화
  void _toggleNotifications(bool value) async {
    setState(() {
      notificationEnabled = value;
      print(value);

      // 스위치 상태가 변경될 때마다 설정을 저장
      _saveSettings(value);
    });

    // 알림 관련 기능 일단 제외
    // final FirebaseMessaging messaging = FirebaseMessaging.instance;
    //
    // if (value) {
    //   try {
    //     String? token = await messaging.getToken();
    //     print("토큰 : $token");
    //   } catch (e) {
    //     print("토큰을 가져오는 중 오류 발생: $e");
    //   }
    // } else {
    //   try {
    //     await messaging.deleteToken();
    //     print("토큰을 삭제했습니다.");
    //   } catch (e) {
    //     print("토큰을 삭제하는 중 오류 발생: $e");
    //   }
    // }
  }

  void _saveSettings(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("notificationEnabled", value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          '설정',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Color(0xF1F3F8FF),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '백그라운드 실행',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.info,
                          color: Colors.blueAccent), // 정보 아이콘 사용
                      onPressed: () {
                        // 정보 다이얼로그 표시
                        _showInfoDialog();
                      },
                    ),
                  ],
                ),
                Switch(
                  value: notificationEnabled,
                  onChanged: (value) {
                    // 스위치 상태 변경 시 호출되는 함수
                    _toggleNotifications(value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              // home으로 토글 값 반환
              Navigator.pop(context, notificationEnabled);
            },
            child: Text(
              '확인',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
