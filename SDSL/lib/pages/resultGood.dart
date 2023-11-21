import 'package:flutter/material.dart';
import 'package:sdsl/components/customAppbar.dart';

class ResultGood extends StatelessWidget {
  const ResultGood({Key? key});

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

                SizedBox(height: 50),

                Text(
                  '고장 예측 결과',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.0),
                ),

                SizedBox(height: 20),

                Container(
                    height: 180,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/checked.png'),
                      ),
                    ),
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                    )
                ),

                Center(
                  child: Container(
                    width : 350,
                    height: 360,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xFFD5ECD7),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '엔진 멈춤 및 시동 꺼짐과 관련된 심각한   고장코드 5개에 대한 예측을 완료했어요. \n\n',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '  ✅  P0035: 터보 엔진 산소 센서'
                              '\n  ✅  P0122: 엔진의 공기 공급 제어'
                              '\n  ✅  P0135: 일반 엔진 산소 센서'
                              '\n  ✅  P0335: 회전 상태 감지 센서'
                              '\n  ✅  P0562: 배터리 충전 및 시스템 전압\n\n',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '아무 고장도 예측되지 않았어요.                '
                              '오늘도 안전운전 하세요 :)',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          )
      ),
    );
  }
}
