import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "A title1111",
          ),
        ),
        body: Stack(
          alignment: Alignment(0.6, 0.6),
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/pic1.jpg'),
              radius: 200,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
              child: Text(
                "MIla B.",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
