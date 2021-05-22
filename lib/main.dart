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
    return MaterialApp(routes: {
      '/': (context) => HomeScreen(),
      '/secondScreen': (context) => SelectionScreen()
    });
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
          child: MyImage(),
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _navigateAndDisplaySelection(context);
        },
        child: Hero(
          tag: 'imageHero',
          child: Image.network('https://picsum.photos/250?image=9'),
        ));
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    var result = await Navigator.pushNamed(context, '/secondScreen');

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
        appBar: AppBar(title: Text("Details")),
        body: Row(
          children: [
            Hero(
              tag: 'imageHero',
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
