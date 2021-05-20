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
      home: HomePage(),
    );
  }
}

class Todo {
  final String title;
  final String body;

  Todo(this.title, this.body);
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Todo> list = List.generate(
        20, (index) => Todo("The title $index", "The description $index"));
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(todo: list[index])));
              },
              title: Center(child: Text(list[index].title)),
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;

  const DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.todo.title),
      ),
      body: Center(child: Text(this.todo.body)),
    );
  }
}
