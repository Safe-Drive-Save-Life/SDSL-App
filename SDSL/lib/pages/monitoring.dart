import 'package:flutter/material.dart';

class Monitoring extends StatefulWidget {
  @override
  _MonitoringState createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  // 각각의 고장 코드와 내용
  List<String> faultCodes = ['P0035', 'P0122', 'P0135', 'P0339', 'P0562'];
  List<String> faultDescriptions = [
    '터보차저나 슈퍼차저 바이패스 밸브 A에 이상이 생김',
    '스로틀 위치 센서 TPS A가 너무 낮은 전압을 보고하고 있음',
    'O2 산소 센서 히터 회로 오작동',
    '크랭크축 위치 센서 B 회로 오작동',
    '시스템 전압이 낮음',
  ];

  // 각 고장 코드의 알림 횟수를 저장하는 변수
  List<int> notificationCount = [1, 3, 0, 4, 5];

  // 알림 횟수에 따라 색상을 반환하는 함수
  Color getContainerColor(int count) {
    return count >= 5 ? Color(0xfffaa59d) : Color(0xFFFFC958);
  }

  @override
  Widget build(BuildContext context) {
    // 고장 코드 리스트를 카운트 내림차순으로 정렬
    List<int> sortedIndices = List.generate(faultCodes.length, (index) => index);
    sortedIndices.sort((a, b) => notificationCount[b].compareTo(notificationCount[a]));

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
                  return Visibility(
                    visible: notificationCount[index] > 0,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          width: 350,
                          height: 150,
                          decoration: BoxDecoration(
                            color: getContainerColor(notificationCount[index]),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),

                              // 고장코드명
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  '${faultCodes[index]}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              // 고장코드 설명
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
                            ],
                          ),
                        ),
                      ],
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
