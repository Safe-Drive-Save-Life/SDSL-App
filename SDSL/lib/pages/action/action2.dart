import 'package:flutter/material.dart';
import '../../buttons/nearCarcenterBtn.dart';

class Action2 extends StatefulWidget {
  @override
  _Action2State createState() => _Action2State();
}

class _Action2State extends State<Action2> {
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
                          'assets/images/P0035_1.png',
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(height: 5.0),

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
                          'assets/images/P0335_2.png',
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(height: 5.0),

                        Text(
                          '1) 크랭크축의 위치 센서를 찾아야해요. 보통 엔진의 앞쪽 하단의 위치해 있어요.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.0),

                        Image.asset(
                          'assets/images/P0335_2.png',
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(height: 5.0),

                        Text(
                          '2) 크랭크축 위치 센서를 조심스럽게 탈거해요.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 5.0),

                        Text(
                          '+) 그리고 센서가 오염되지 않았는지 확인해주세요',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Image.asset(
                          'assets/images/P0335_3.png',
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(height: 5.0),

                        Text(
                          '3) 센서의 저항을 측정하기 위하여 멀티미터를 준비합니다.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Image.asset(
                          'assets/images/P0335_4.png',
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(height: 5.0),

                        Text(
                          '4) 센서의 저항값이 차량의 권장 저항값의 범위와 다른 경우 교체를 해야합니다.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Image.asset(
                          'assets/images/P0335_5.png',
                          fit: BoxFit.fitWidth,
                        ),

                        SizedBox(height: 5.0),

                        Text(
                          '5) 새롭게 교체할 센서를 준비하고 O-Ring이 떨어지지 않았는지 확인한 후 기존에 있었던 자리에 장착하세요.',
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