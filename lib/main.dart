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
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    var title = Container(
      child: Center(child: Text(
        "Strawberry",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),)
    );

    var subTitle = Text(
        "Pavlova is a meringue-based dessert named after Russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.");
    var star = Icon(
      Icons.star,
      color: Colors.green[500],
    );
    var stars = Row(
      children: [
        star,
        star,
        star,
        star,
        star,
      ],
    );

    var rating = Text(
      "170 Reviewss",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 10,
      height: 2,
    );

    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [Icon(Icons.kitchen), Text("PREP:"), Text("25 min.")],
            ),
            Column(
              children: [Icon(Icons.restaurant), Text("FEEDS:"), Text("4-6.")],
            ),
            Column(
              children: [Icon(Icons.timer), Text("COOK:"), Text("1 hr.")],
            )
          ],
        ));

    var leftColumn = Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            title,
            subTitle,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                stars,
                Expanded(
                  child: rating,
                ),
              ],
            ),
            iconList,
          ],
        ),
      ),
    );

    var rightColumn =
    Image.asset("lib/assets/1.png", fit:  BoxFit.cover, width: 200, height: double.infinity,)
    ;

    return Scaffold(
      body: Card(
        child: Row(children: [
          leftColumn,
          rightColumn,
        ]),
      ),
    );
  }
}
