import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(body: _buildGrid()),
  ));
}

int count = 29;

Widget _buildGrid() => GridView.count(
      crossAxisCount: 4,
      padding: const EdgeInsets.all(4),
      children: List.generate(count, (index) => Container(child: Image.asset('images/pic${index + 1}.jpg'),)),
    );
