import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("The title"),
      ),
      body: ListView(
        children: [
          _tile("jjijiji 1 ", Icons.ac_unit),
          _tile("jjijiji 2 ", Icons.star),
          _tile("jjijiji 3 ", Icons.motorcycle),
        ],
      ),
    ),
  ));
}

ListTile _tile(String title, IconData icon) => ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Icon(
            icon,
            color: Colors.blue,
          ),
        );

