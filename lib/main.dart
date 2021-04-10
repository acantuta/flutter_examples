import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My first app",
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("Pressend");
          },
          tooltip: "Menu",
        ),
        title: Text("Title"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            tooltip: "Search",
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("OnTap Gesture deteected");
          },
          onDoubleTap: () {
            print("double tapp");
          },
          onLongPress: () {
            print("on long press end");
          },
          child: Container(
            height: 100,
            width: 200,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Align(
                alignment: Alignment.bottomCenter, child: Text("The text")),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("Floating action pressed");
        },
      ),
    );
  }
}
