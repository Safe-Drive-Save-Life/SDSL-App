import 'package:flutter/material.dart';
import 'package:sdsl/buttons/myCarcenter.dart';
import '../buttons/nearCarcenterBtn.dart';

class CarServiceBtnsBar extends StatelessWidget {
  final myCarCenter carCenter = myCarCenter();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    nearCarcenterBtn().searchNearCarcenter();
                  },
                  icon: const Icon(Icons.build),
                ),
                Text(
                  '주변 정비소',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  onPressed: () async {
                    await carCenter.showCallConfirmationDialog(context);
                  },
                  icon: const Icon(Icons.call),
                ),
                Text(
                  '마이 정비소',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
