import 'package:flutter/material.dart';
import 'package:sdsl/components/customAppbar.dart';
import 'dart:async';

class Monitoring extends StatefulWidget {
  @override
  _MonitoringState createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  // 각각의 고장 코드와 내용
  List<String> faultCodes = ['P0035', 'P0122', 'P0135', 'P0335', 'P0562'];
  List<String> faultDescriptions = [
    '터보 엔진에서 연료와 공기의 비율을\n감지하는 산소 센서의 문제가 생겼어요.',
    '엔진의 공기 공급을 제어하는 부분에\n문제가 발생했어요.',
    '일반 엔진에서 연료와 공기의 비율을\n감지하는 센서의 문제가 발생했어요.',
    '엔진이 언제 회전하고 멈추는지\n파악하는 센서의 문제가 발생했어요.',
    '배터리가 충분히 충전되지 않거나\n배터리 내부적으로 문제가 발생했어요.',
  ];

  // 각 고장 코드의 알림 횟수를 저장하는 변수
  List<int> notificationCount = [0, 0, 0, 0, 0];
  // List<int> notificationCount = [3, 1, , 6, 19];
  Timer? timer;

  // 알림 횟수에 따라 색상을 반환하는 함수
  Color getContainerColor(int count) {
    if (count >= 15) { // count가 15 이상이면
      return Color(0xffff0025);
    } else if (count >= 10) { // count가 10 이상이면
      return Color(0xffff6e2e);
    } else if (count >= 5) { // count가 5 이상이면
      return Color(0xFFFFA74F);
    } else { // 나머지
      return Color(0xFFFFC637);
    }
  }

  @override
  void initState() {
    super.initState();
    _increaseArrayValues(); // 배열 카운트 증가
  }

  @override
  void dispose() {
    _stopArrayIncrease();
    super.dispose();
  }

  void _increaseArrayValues() {
    // 5초에 한 번씩 배열 값 증가
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        notificationCount[0]++;
      });
    });
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        notificationCount[1]++;
      });
    });
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        notificationCount[2]++;
      });
    });
    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      setState(() {
        notificationCount[3]++;
      });
    });
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        notificationCount[4]++;
      });
    });
  }

  void _stopArrayIncrease() {
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // 고장 코드 리스트를 카운트 내림차순으로 정렬
    List<int> sortedIndices = List.generate(faultCodes.length, (index) => index);
    sortedIndices.sort((a, b) => notificationCount[b].compareTo(notificationCount[a]));

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
              '실시간 예측 내역',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.0,
              ),
            ),
            SizedBox(height: 20),

            // ListView.builder를 사용해 알림 컨테이너를 동적으로 생성
            Expanded(
              child: ListView.builder(
                itemCount: faultCodes.length,
                itemBuilder: (context, sortedIndex) {
                  final index = sortedIndices[sortedIndex];
                  final count = notificationCount[index]; // 알림 횟수
                  return Visibility(
                    visible: count > 0,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          height: 130,
                          decoration: BoxDecoration(
                            color: getContainerColor(count),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row( // Row 위젯 사용
                            children: [
                              // 왼쪽에 고장 코드명과 설명 표시
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '${faultCodes[index]}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          ' ($count회)',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Text(
                                      faultDescriptions[index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
