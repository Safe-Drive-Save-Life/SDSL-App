import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key});

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
              '고장 예측 결과',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.0),
              ),

              SizedBox(height: 20),

              Center(
                child: Container(
                    width : 350,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xfffaa59d),
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),

              SizedBox(height: 50),

              Text(
                '예측 고장 코드',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.0),
              ),

              SizedBox(height: 20),

              Center(
                child: Container(
                    width : 350,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color(0xffe0e0e0),
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),

              SizedBox(height: 20),

              Center(
                child: Container(
                    width : 350,
                    height: 180,
                    decoration: BoxDecoration(
                        color: Color(0xffe0e0e0),
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),

          ]
        )
      ),
    );
  }
}