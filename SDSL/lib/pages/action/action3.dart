import 'package:flutter/material.dart';
import '../../buttons/nearCarcenterBtn.dart';

class Action3 extends StatefulWidget {
  @override
  _Action3State createState() => _Action3State();
}

class _Action3State extends State<Action3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1edfc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'SDSL',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
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

            Expanded(
              child: SingleChildScrollView(
                child: Center(
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

                        Text(
                          '1. 고장 위치 확인',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.0,
                          ),
                        ),

                        SizedBox(height: 20.0),

                        Image.asset(
                          'assets/images/P0135_1.png',
                          fit: BoxFit.fitWidth,
                        ),
                        Text(
                          'P0135 고장코드는 위 사진에 표시된 O2 센서 히터 회로가 오작동 하는 경우 발생합니다.(Bank1 Sensor1)',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 30.0),

                        Container(
                          height: 1.0,
                          color: Colors.grey,
                        ),

                        SizedBox(height: 30.0),

                        Text(
                          '2. 조치 사항',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.0,
                          ),
                        ),

                        SizedBox(height: 20.0),

                        Image.asset(
                          'assets/images/P0135_2.png',
                          fit: BoxFit.fitWidth,
                        ),
                        Text(
                          '1) 산소 센서를 점검한 후 새로운 산소 센서를 준비해요.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.0),

                        Image.asset(
                          'assets/images/P0125_2.png',
                          fit: BoxFit.fitWidth,
                        ),
                        Text(
                          '2) 기존의 산소 센서를 제거하고 준비한 센서를 연결해요.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 30.0),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            // 주변 정비소, 마이 정비소 버튼
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              ),
              margin: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            nearCarcenterBtn().searchNearCarcenter();
                          },
                          icon: const Icon(Icons.build),
                        ),
                        Text(
                          '주변 정비소',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.call),
                        ),
                        Text(
                          '마이 정비소',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}