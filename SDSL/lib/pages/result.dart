import 'package:flutter/material.dart';
import 'package:sdsl/components/customAppbar.dart';
import 'action/action1.dart';
import 'action/action2.dart';
import 'action/action3.dart';
import 'action/action4.dart';
import 'action/action5.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  List<bool> containerVisibility = [true, true, true, true, true]; // Visibility 상태를 관리하는 리스트

  // 각각의 고장 코드와 내용
  List<String> faultCodes = ['P0035', 'P0122', 'P0135', 'P0339', 'P0562'];
  List<String> faultDescriptions = [
    '터보차저나 슈퍼차저 바이패스 밸브에\n이상이 생겼어요.',
    '스로틀 위치 센서의 전압이 너무 낮아요.\n',
    'O2 산소 센서 히터 회로가 오작동하고\n있어요.',
    '크랭크축 위치 센서 회로가 오작동하고 있어요.',
    '시스템 전압이 너무 낮아요.\n',
  ];

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
              '고장 예측 결과',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.0,
              ),
            ),

            SizedBox(height: 20),

            Center(
              child: Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xfffaa59d),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '${containerVisibility.where((visible) => visible).length}개의 고장이 예측됩니다. \n 아래의 사항을 확인해주세요 :(',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // 예측 고장 코드 목록
            Text(
              '예측 고장 코드',
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
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: containerVisibility.length,
                itemBuilder: (context, index) {
                  return Visibility(
                    visible: containerVisibility[index],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5.0,
                      ), // 각 컨테이너 간 패딩
                      child: Center(
                        child: SingleChildScrollView(
                          child: Container(
                            width: 350,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Color(0xffe0e0e0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    faultCodes[index], // 각 컨테이너에 다른 고장 코드를 표시
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Text(
                                    faultDescriptions[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1.0,
                                  height: 10.0,
                                ),

                                SizedBox(height: 10.0), // 간격 추가

                                GestureDetector(
                                  onTap: () {
                                    // 각각의 "조치사항 보러가기"를 누를 때 페이지 이동 처리
                                    if (index == 0) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Action1()), // Action1 페이지로 이동
                                      );
                                    } else if (index == 1) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Action2()), // Action2 페이지로 이동
                                      );
                                    } else if (index == 2) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Action3()), // Action3 페이지로 이동
                                      );
                                    } else if (index == 3) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Action4()), // Action4 페이지로 이동
                                      );
                                    } else if (index == 4) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Action5()), // Action5 페이지로 이동
                                      );
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Text(
                                      '조치사항 보러가기',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // 확인 버튼
      // bottomNavigationBar: Container(
      //   color: Colors.grey,
      //   child: Padding(
      //     padding: EdgeInsets.all(16.0),
      //     child: ElevatedButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       child: Text(
      //         '확인',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.transparent,
      //         elevation: 0,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
