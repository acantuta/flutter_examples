import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.lightGreen),
              child: Center(
                child: Text("2"),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(child: Text("1")),
            )),
            Expanded(child: Image.asset("lib/assets/1.png"), flex: 1,),
          ],
        ),
      ),
    );
  }
}
