import 'package:flutter/material.dart';
import 'package:sdsl/components/carServiceBtnsBar.dart';
import '../../components/customAppbar.dart';

class Action5 extends StatefulWidget {
  @override
  _Action5State createState() => _Action5State();
}

class _Action5State extends State<Action5> {
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
                          'assets/images/P0562_1.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'P0562 고장코드는 시스템 전압이 낮을 때 발생해요.',
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
                          'assets/images/P0562_2.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '1) P0562 고장코드를 해결하기 위해서는 총 4가지를 체크해서 이상이 있는 부품을 교체해야 해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '2) 먼저 배터리 케이블이 이상이 없는지 확인해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0562_3.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '3) 케이블에 이상이 없다면 배터리 전압을 측정해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0562_4.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '4) 차량 발전기를 체크해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0562_5.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '5) 마지막으로 배터리 센서가 정상적으로 작동하는지 확인해요.',
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