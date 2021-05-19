import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstRoute()
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("The title"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              print("pressed...");
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SecondRoute(),
              ));
            },
            child: Text("Launch second page33"),
          ),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Close"),
          ),
        ),
      ),
    ));
  }
}
