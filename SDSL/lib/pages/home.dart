import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1edfc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('SDSL',
            style: TextStyle(color: Colors.blueAccent)),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child:Column(
            children: <Widget> [
              Row(
                children: [
                  Container(
                    width: 350,
                    height:20,
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: 350,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                              children: [
                                Image.asset('assets/images/carInfo.png',
                                    width: 330,
                                    height: 180),
                              ]

                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.white,
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 5,
                          ),
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 350,
                    height:20,
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                            children:[
                              Image.asset('assets/images/1.png',
                                  width : 80,
                                  height: 80),
                            ]
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 5,
                        ),
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 110,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                            children:[
                              Image.asset('assets/images/2.png',
                                  width : 70,
                                  height: 70),
                            ]
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 5,
                        ),
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 110,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                            children:[
                              Image.asset('assets/images/3.png',
                                  width : 80,
                                  height: 80),
                            ]
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.white,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 5,
                        ),
                      ),
                    ),
                  ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                          children:[
                            Image.asset('assets/images/4.png',
                                width : 80,
                                height: 80),
                          ]
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 110,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                          children:[
                            Image.asset('assets/images/5.png',
                                width : 80,
                                height: 80),
                          ]
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 110,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                          children:[
                            Image.asset('assets/images/6.png',
                                width : 80,
                                height: 80),
                          ]
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.white,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}