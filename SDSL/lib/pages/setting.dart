import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool notificationsEnabled = true; // 초기 상태: 알림 활성화

  // 정보 다이얼로그를 표시하는 함수
  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('정보'),
          content: Text('백그라운드 실행을 활성화하면 예측 경고 알림을 실시간으로 확인해볼 수 있습니다.'),
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

  // 스위치 상태에 따라 푸시 알림을 활성화 또는 비활성화
  void _toggleNotifications(bool value) async {
    setState(() {
      notificationsEnabled = value;
    });

    final FirebaseMessaging messaging = FirebaseMessaging.instance;

    if (value) {
      try {
        String? token = await messaging.getToken();
        print("토큰 : $token");
      } catch (e) {
        print("토큰을 가져오는 중 오류 발생: $e");
      }
    } else {
      try {
        await messaging.deleteToken();
        print("토큰을 삭제했습니다.");
      } catch (e) {
        print("토큰을 삭제하는 중 오류 발생: $e");
      }
    }
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
        color: Color(0xffe1edfc),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '백그라운드 실행',
                      style: TextStyle(
                        color : Colors.black54,
                        fontSize: 20.0,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.info), // 정보 아이콘 사용
                      color: Colors.black54,
                      onPressed: () {
                        // 정보 다이얼로그 표시
                        _showInfoDialog();
                      },
                    ),
                  ],
                ),
                Switch(
                  value: notificationsEnabled,
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
              Navigator.pop(context);
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
