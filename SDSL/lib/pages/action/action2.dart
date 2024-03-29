import 'package:flutter/material.dart';
import 'package:sdsl/components/carServiceBtnsBar.dart';
import '../../components/customAppbar.dart';

class Action2 extends StatefulWidget {
  @override
  _Action2State createState() => _Action2State();
}

class _Action2State extends State<Action2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF1F3F8FF),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              '조치사항',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.0,
              ),
            ),
            SizedBox(height: 20),

            // 조치사항 내용 담을 컨테이너
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xffe0e0e0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      // 조치사항 내용
                      SizedBox(height: 30.0),
                      // 1. 고장 위치 확인
                      SizedBox(
                        width: 300,
                        child: Text(
                          '1. 고장 위치 확인',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      // 고장 위치 사진
                      Image.asset(
                        'assets/images/P0035_1.png',
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'P0122 고장코드는 위 사진에 표시된 스로틀 위치 센서가 너무 낮은 전압인 경우 발생합니다.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 30.0),

                      // 회색 구분선
                      Container(
                        height: 1.0,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 30.0),

                      // 2. 조치사항
                      SizedBox(
                        width: 300,
                        child: Text(
                          '2. 조치사항',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      Image.asset(
                        'assets/images/P0335_2.png',
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '1) 크랭크축의 위치 센서를 찾아야해요. 보통 엔진의 앞쪽 하단의 위치해 있어요.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.0),

                      Image.asset(
                        'assets/images/P0335_2.png',
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '2) 크랭크축 위치 센서를 조심스럽게 탈거해요.                          ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '+) 그리고 센서가 오염되지 않았는지 확인해주세요.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.0),

                      Image.asset(
                        'assets/images/P0335_3.png',
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '3) 센서의 저항을 측정하기 위하여 멀티미터를 준비해요.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.0),

                      Image.asset(
                        'assets/images/P0335_4.png',
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '4) 센서의 저항값이 차량의 권장 저항값의 범위와 다른 경우 교체를 해야해요.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.0),

                      Image.asset(
                        'assets/images/P0335_5.png',
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '5) 새롭게 교체할 센서를 준비하고, O-Ring이 떨어지지 않았는지 확인한 후 기존에 있었던 자리에 장착하세요.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
            ),

            // 주변 정비소, 마이 정비소 버튼
            CarServiceBtnsBar(),
          ],
        ),
      ),
    );
  }
}
