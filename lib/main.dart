import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("El título"),
    ),
    body: _buildImageColumn(),
  )));
}

Widget _buildImageColumn() => Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(3)
        ],
      ),
    );

Widget _buildImageRow(imageIndex) => Row(
  children: [
    _buildDecoratedImage(imageIndex),
    _buildDecoratedImage(imageIndex + 1)
  ],
);

Expanded _buildDecoratedImage(int imageIndex) => Expanded(
  child: Container(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 40, color: Colors.greenAccent),
      ),
      margin: const EdgeInsets.all(4.0),
      child: Image.asset("images/pic$imageIndex.jpg"),
    ),
  )
);
