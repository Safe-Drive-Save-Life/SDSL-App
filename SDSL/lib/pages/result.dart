import 'package:flutter/material.dart';
import 'package:sdsl/components/customAppbar.dart';
import 'action/action1.dart';
import 'action/action2.dart';
import 'action/action3.dart';
import 'action/action4.dart';
import 'action/action5.dart';

class Result extends StatefulWidget {
  final List<int> inferenceArray;

  Result({Key? key, required this.inferenceArray}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  List<bool> containerVisibility = [false, false, false, false, false]; // Visibility 상태를 관리하는 리스트

  // 각각의 고장 코드와 내용
  List<String> faultCodes = ['P0035', 'P0122', 'P0135', 'P0335', 'P0562'];
  List<String> faultDescriptions = [
    '터보 엔진에서 연료와 공기의 비율을\n감지하는 산소 센서의 문제가 생겼어요.',
    '엔진의 공기 공급을 제어하는 부분에\n문제가 발생했어요.',
    '일반 엔진에서 연료와 공기의 비율을\n감지하는 센서의 문제가 발생했어요.',
    '엔진이 언제 회전하고 멈추는지\n파악하는 센서의 문제가 발생했어요.',
    '배터리가 충분히 충전되지 않거나\n배터리 내부적으로 문제가 발생했어요.',
  ];

  @override
  void initState() {
    super.initState();
    updateContainerVisibility();
  }

  void updateContainerVisibility() {
    // inferenceData에서 각 키에 대한 값을 확인하고, 0보다 크면 해당 인덱스의 containerVisibility 값을 true로 설정
    for (int i = 0; i < faultCodes.length; i++) {
      if (widget.inferenceArray[i] != null && widget.inferenceArray[i]! > 0) {
        containerVisibility[i] = true;
      } else {
        containerVisibility[i] = false;
      }
    }
  }

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
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xd2fcb1aa),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: '엔진 멈춤 및 시동 꺼짐과 관련된            ',
                          ),
                          TextSpan(
                            text: '${containerVisibility.where((visible) => visible).length}개',
                            style: TextStyle(
                              fontWeight: FontWeight.bold, // 고장코드 개수 볼드체 적용
                            ),
                          ),
                          TextSpan(
                            text: '의 심각한 고장이 예측됩니다 :(',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // 예측 고장 코드 목록
            Text(
              '예측된 고장 코드',
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
                                    '${faultCodes[index]}', // 각 컨테이너에 다른 고장 코드를 표시
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
    );
  }
}
