import 'package:flutter/material.dart';
import 'package:sdsl/components/carServiceBtnsBar.dart';
import '../../components/customAppbar.dart';

class Action4 extends StatefulWidget {
  @override
  _Action4State createState() => _Action4State();
}

class _Action4State extends State<Action4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1edfc),
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
                          'assets/images/P0339_1.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'P0339 고장코드는 위 사진에 표시된 크랭크축 위치 센서 회로가 오작동하고 있는 경우 발생해요.',
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
                          'assets/images/P0339_2.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '1) 크랭크축 위치 센서 A를 찾아서 분리해야 해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '2) 이 센서는 엔진 앞부분의 아래쪽에 위치해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0339_3.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '3) 분리한 센서가 다른 엔진 부품들로 인해 오염되지 않았는지 육안으로 검사해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0125_3.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '4) 센서의 저항값을 측정하기 위해 멀티미터를 준비해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0339_4.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '5) 측정이 정상적으로 이루어지지 않는다면 센서에 결함이 있는 것이므로 교체가 필요해요.',
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
            ),

            // 주변 정비소, 마이 정비소 버튼
            CarServiceBtnsBar(),
          ],
        ),
      ),
    );
  }
}