import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sdsl/pages/result.dart';
import 'package:sdsl/pages/resultGood.dart';

class Inference extends StatefulWidget {
  @override
  _InferenceState createState() => _InferenceState();
}

class _InferenceState extends State<Inference> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dart & Flask Integration'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              List<int> data = await fetchDataFromFlask(); // 결과값 가져올 때까지 대기
              if (data.isNotEmpty) {
                int P0035_count = data[0];
                int P0122_count = data[1];
                int P0135_count = data[2];
                int P0335_count = data[3];
                int P0562_count = data[4];
                if (P0035_count == 0) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ResultGood()));
                } else {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Result()));
                }
              }
            },
            child: Text('Fetch Data from Flask'),
          ),
        ),
      ),
    );
  }
}

Future<List<int>> fetchDataFromFlask() async {
  final response = await http.get(Uri.parse('http://192.168.0.3:8000/predict'));
  List<int> inferenceArray = [0, 0, 0, 0, 0];
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    double mseP0035 = data["mean_mse"].toDouble();
    print(mseP0035);
    if (mseP0035 > 0.0003) {
      inferenceArray[0]++; // P0035 Count
    }
    print(inferenceArray[0]);
    return inferenceArray;
  } else {
    throw Exception('Failed to fetch data from Flask.');
  }
}
