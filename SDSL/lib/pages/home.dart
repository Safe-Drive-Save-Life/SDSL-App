import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sdsl/components/customAppbar.dart';
import 'package:sdsl/components/loading.dart';
import 'package:sdsl/pages/monitoring.dart';
import 'package:sdsl/pages/resultGood.dart';
import 'package:sdsl/pages/setting.dart';
import 'result.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool notificationEnabled = false; // notificationEnabled 변수 정의
  bool isLoading = false; // 로딩 상태를 저장하는 변수 추가

  @override
  void initState() {
    super.initState();
  }

  void _showAlertPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('알림'),
          content: Text('백그라운드 설정을 확인하세요 !'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('닫기'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xffe1edfc),
          appBar: CustomAppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset('assets/images/carInfo.png',
                          width: 330, height: 190),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        if (!notificationEnabled) {
                          // notificationEnabled 값이 true인 경우, 경고 팝업 띄우기
                          _showAlertPopup(context);
                        } else {
                          // 아니면 모니터링 결과 화면으로
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Monitoring()),
                          );
                        }
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/1.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true; // 데이터를 받아오는 중으로 설정
                        });

                        List<int> inferenceData = await fetchDataFromFlask();

                        setState(() {
                          isLoading = false; // 데이터를 받아왔으므로 로딩 상태 해제
                        });

                        if (inferenceData[0] == 0 &&
                            inferenceData[1] == 0 &&
                            inferenceData[2] == 0 &&
                            inferenceData[3] == 0 &&
                            inferenceData[4] == 0) {
                          // 예측된 결과 없으면
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => ResultGood()),
                          );
                        } else {
                          // 고장 있으면
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    Result(inferenceArray: inferenceData)),
                          );
                        }
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/2.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/3.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/4.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/5.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/6.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/10.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/11.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/12.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/7.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset('assets/images/8.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        bool val = await Navigator.push(
                          // Setting 화면으로부터 토글 값 받아오기
                            context,
                            MaterialPageRoute(builder: (_) => Setting()));
                        setState(() {
                          // 변수값 할당
                          notificationEnabled = val;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/9.png',
                              width: 80, height: 100),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // 로딩 중 화면
        if (isLoading)
          Container(
            color: Colors.white.withOpacity(0.7), // 불투명도
            child: LoadingScreen(),
          ),
      ],
    );
  }

  Future<List<int>> fetchDataFromFlask() async {
    final response =
        await http.get(Uri.parse('http://192.168.0.3:8000/predict'));
    List<int> inferenceArray = [0, 0, 0, 0, 0]; // 고장 카운트 배열
    if (response.statusCode == 200) {
      // 데이터 요청 성공
      final data = json.decode(response.body);

      double mseP0035 = data["mse_P0035"].toDouble();
      double mseP0122 = data["mse_P0122"].toDouble();
      double mseP0135 = data["mse_P0135"].toDouble();
      double mseP0335 = data["mse_P0335"].toDouble();
      double mseP0562 = data["mse_P0562"].toDouble();

      if (mseP0035 > 0.002) {
        inferenceArray[0]++; // P0035 Count
      }
      if (mseP0122 > 0.001) {
        inferenceArray[1]++; // P0122 Count
      }
      if (mseP0135 > 0.03) {
        inferenceArray[2]++; // P0135 Count
      }
      if (mseP0335 > 0.08) {
        inferenceArray[3]++; // P0335 Count
      }
      if (mseP0562 > 1.2) {
        inferenceArray[4]++; // P0562 Count
      }
      return inferenceArray;
    } else {
      // 데이터 요청 실패
      throw Exception('Failed to fetch data from Flask.');
    }
  }
}
