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
        body: Container(
          width: double.infinity,
          child: Card(
            child: Column(children: [
              buildListTile(Icons.access_alarm, "A title", "A title2"),
              Divider(),
              buildListTile(Icons.accessibility_new, "A title", "A title2"),
              Divider(),
            ]),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(IconData icon, String title, String subtitle) {
    return ListTile(
        leading: Icon(
          Icons.ac_unit,
          color: Colors.blue,
          size: 50,
        ),
        title: Text(title),
        subtitle: Text(subtitle));
  }
}
