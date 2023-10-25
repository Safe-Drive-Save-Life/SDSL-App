import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class myCarCenter {
  String phoneNumber = '123-456-7890'; // 전화번호 변수 설정

  Future<void> showCallConfirmationDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('전화 연결'),
          content: Text('마이 정비소 연결을 위해 $phoneNumber 번호로 이동하시겠습니까?'),
          actions: <Widget>[
            TextButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.of(context).pop(); // 팝업 닫기
              },
            ),
            TextButton(
              child: Text('전화 연결'),
              onPressed: () {
                makePhoneCall(phoneNumber); // 전화 걸기 함수 호출
                Navigator.of(context).pop(); // 팝업 닫기
              },
            ),
          ],
        );
      },
    );
  }

  // 전화 거는 함수
  Future<void> makePhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw '전화를 걸 수 없습니다: $url';
    }
  }
}
