import 'package:flutter/material.dart';

class Action4 extends StatefulWidget {
  @override
  _Action4State createState() => _Action4State();
}

class _Action4State extends State<Action4> {
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
                      SizedBox(height: 10.0),
                      Image.asset('assets/images/P0339_1.png',
                          width:330,
                          height:100),

                      Text(
                        'P0339 고장코드는 위 사진에 표시된 크랭크축 위치 센서 회로가 오작동하고 있는 경우 발생합니다.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.0),

                      Image.asset('assets/images/P0339_2.png',
                          width:330,
                          height:100),

                      SizedBox(height: 15.0),

                      Image.asset('assets/images/P0339_3.png',
                          width:330,
                          height:100),

                      SizedBox(height: 15.0),

                      Image.asset('assets/images/P0339_4.png',
                          width:330,
                          height:100),

                      Text(
                        '조치사항 내용',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      // 추가적인 조치사항 내용을 넣어주세요.
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
