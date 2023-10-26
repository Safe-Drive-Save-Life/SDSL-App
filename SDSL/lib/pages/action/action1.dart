import 'package:flutter/material.dart';
import 'package:sdsl/components/carServiceBtnsBar.dart';
import '../../components/customAppbar.dart';

class Action1 extends StatefulWidget {
  @override
  _Action1State createState() => _Action1State();
}

class _Action1State extends State<Action1> {
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
                          'assets/images/P0035_1.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'P0035 고장코드는 위 사진에 표시된 터보차저나 슈퍼차저 바이패스 밸브에 이상이 생긴 경우 발생합니다.',
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
                          'assets/images/P0125_1.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '1) ECT 센서를 확인해봐야 해요. 센서 위치는 대부분 차량의 실린더 헤드 내부에 온도 조절기 근처에 위치해 있어요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0125_2.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '2) ECT 센서를 엔진에서 분리해요.',
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
                          '3) 센서의 저항값을 측정하기 위해 멀티미터를 준비해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0125_4.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '4) 섭씨온도 20도 기준으로 2000Ω ~ 3000Ω 의 저항값을 나오는지 확인 후 범위안에 값을 가지지 않는 경우 ECT 센서를 교체해주세요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Text(
                          '5) 만약 측정 시 정상값의 범위의 결과가 나온다면 아래의 조치 방법을 확인해주세요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0125_8.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '6) 엔진의 온도 조절기를 교체해야 해요. 대부분의 차량의 실린더 헤드 상단의 워터펌프 주변에 위치해있어요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0125_5.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '7) 그림과 같이 생긴 온도조절기를 엔진에서 제거해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0125_6.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '8) 새로운 엔진 조절기를 준비하여 그림과 같은 방향으로 엔진에 장착해요.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15.0),

                        Image.asset(
                          'assets/images/P0125_7.png',
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '9) 또한 Jiggle 밸브의 방향이 그림과 같이 위를 바라보게 해주세요.',
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
