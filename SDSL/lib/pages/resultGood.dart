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

                SizedBox(height: 70),

                Text(
                  '고장 예측 결과',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.0),
                ),

                SizedBox(height: 30),

                Center(
                  child: Container(
                    width : 350,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xffd4fcdd),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                        '예측되는 심각한 고장이 없어요. \n 항상 안전운전 하세요 :)',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ),
                ),

                SizedBox(height: 30),

                Container(
                  height: 330,
                  width: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/good.png'),
                    ),
                  ),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                  )
                )

              ]
          )
      ),
    );
  }
}