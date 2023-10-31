import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sdsl/components/customAppbar.dart';
import 'monitoring.dart';
import 'setting.dart';
import 'result.dart';
import 'inference.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Home extends StatelessWidget {
  const Home({Key? key});

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

            ElevatedButton(
              onPressed: () {},
              child: Column(
                children: [
                  Image.asset('assets/images/carInfo.png',
                      width: 330,
                      height: 190),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼 간격 조정
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/1.png',
                          width: 80,
                          height: 100),
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
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Inference()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/2.png',
                          width: 80,
                          height: 100),
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
                          width: 80,
                          height: 100),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼 간격 조정
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset('assets/images/4.png',
                          width: 80,
                          height: 100),
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
                          width: 80,
                          height: 100),
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
                          width: 80,
                          height: 100),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼 간격 조정
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset('assets/images/10.png',
                          width: 80,
                          height: 100),
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
                          width: 80,
                          height: 100),
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
                          width: 80,
                          height: 100),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼 간격 조정
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset('assets/images/7.png',
                          width: 80,
                          height: 100),
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
                          width: 80,
                          height: 100),
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
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Setting()));
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/images/9.png',
                          width: 80,
                          height: 100),
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
    );
  }
}

Future<void> fetchDataFromFlask() async {
  final response = await http.get(Uri.parse('http://localhost:5000/predict'));

  if (response.statusCode == 200) {
    // 데이터 성공적으로 가져옴
    final data = json.decode(response.body);
    print('Data from Flask: ${data["mean_mse"]}');
  } else {
    // 요청이 실패한 경우
    print('Failed to fetch data from Flask.');
  }
}