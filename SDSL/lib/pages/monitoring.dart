import 'package:flutter/material.dart';
import 'package:sdsl/components/customAppbar.dart';

class Monitoring extends StatefulWidget {
  @override
  _MonitoringState createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  // 각각의 고장 코드와 내용
  List<String> faultCodes = ['P0035', 'P0122', 'P0135', 'P0339', 'P0562'];
  List<String> faultDescriptions = [
    '터보차저나 슈퍼차저 바이패스 밸브에\n이상이 생겼어요.',
    '스로틀 위치 센서의 전압이 너무 낮아요.\n',
    'O2 산소 센서 히터 회로가 오작동하고\n있어요.',
    '크랭크축 위치 센서 회로가 오작동하고 있어요.',
    '시스템 전압이 너무 낮아요.\n',
  ];

  // 각 고장 코드의 알림 횟수를 저장하는 변수
  List<int> notificationCount = [5, 15, 30, 4, 52];

  // 알림 횟수에 따라 색상을 반환하는 함수
  Color getContainerColor(int count) {
    if (count >= 50) {
      return Color(0xbdef0000); // count가 50 이상이면 빨간색
    } else if (count > 10) {
      return Color(0x64ff1703); // count가 10 초과 50 미만이면 주황색
    } else {
      return Color(0x27ff3737); // 나머지 경우에는 다른 색
    }
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
              '실시간 자동예측 내역',
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
