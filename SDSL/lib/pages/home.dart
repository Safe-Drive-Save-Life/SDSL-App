import 'package:flutter/material.dart';
import 'setting.dart';
import 'result.dart';
import 'resultGood.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

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
            SizedBox(height: 20), // 공간 추가

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

            SizedBox(height: 20), // 공간 추가

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼 간격 조정
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => ResultGood()));
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
                        context, MaterialPageRoute(builder: (_) => Result()));
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

            SizedBox(height: 20), // 공간 추가

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
            SizedBox(height: 20), // 공간 추가

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
            SizedBox(height: 20), // 공간 추가

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