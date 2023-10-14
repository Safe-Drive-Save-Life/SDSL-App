import 'package:flutter/material.dart';

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
                child: Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 20.0), // 좌우 패딩 맞춤
                  decoration: BoxDecoration(
                    color: Color(0xffe0e0e0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      // 조치사항 내용
                      SizedBox(height: 30.0),

                      Image.asset('assets/images/P0135_1.png',
                          fit: BoxFit.fitWidth),

                      Text(
                        ' P0135 고장코드는 위 사진에 표시된 O2 센서 히터 회로가 오작동 하는 경우 발생합니다.(Bank1 Sensor1)',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 30.0), // 내용 간의 간격을 조절할 수 있습니다.

                      Image.asset('assets/images/P0135_3.png',
                          fit: BoxFit.fitWidth),
                      Text(
                        ' 산소 센서를 점검한 후 새로운 산소 센서를 준비합니다.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 10.0),

                      Image.asset('assets/images/P0135_2.png',
                          fit: BoxFit.fitWidth),
                      Text(
                        ' 기존의 산소 센서를 제거하고 준비한 센서를 연결합니다.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 30.0),

                      TextButton(onPressed: () {},
                        child: Text("주변 정비소가 궁금하다면 클릭!",
                            style: TextStyle(color: Colors.grey,
                                fontSize: 15,
                                decoration: TextDecoration.underline)),
                      )
                    ],
                  ),
                ),

              ),

            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              '확인',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
