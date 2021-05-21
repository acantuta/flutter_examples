import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Returning  Data Demo"),
      ),
      body: Center(
        child: Container(
          child: MyButton(),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text("Pick an option, any option"),
    );
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    var result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SelectionScreen()));

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
            child: Container(
                width: 100,
                height: 200,
                child: ListView(
                  children: [
                    RaisedButton(
                      onPressed: () {
                        Navigator.pop(context, "Yep!");
                      },
                      child: Text("Yep!"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pop(context, "Nope.");
                      },
                      child: Text("Nope"),
                    ),
                  ],
                ))),
      ),
    );
  }
}
