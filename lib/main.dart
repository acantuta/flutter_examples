import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Image.asset(
      "images/pic0.jpg",
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          //Title
          Expanded(
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "oeschinen lake Campground",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Text(
                  "Kandersteg, Switzedland",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          FavoriteWidget(),
        ],
      ),
    );

    Widget buttonSection = Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.blue, Icons.call, "CALL"),
        _buildButtonColumn(Colors.blue, Icons.near_me, "ROUTE"),
        _buildButtonColumn(Colors.blue, Icons.share, "SHARE"),
      ],
    ));

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Layout Demo",
          ),
        ),
        body: Column(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ))
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({
    Key key,
  }) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 40;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
        children: [
      IconButton(
        icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
        color: Colors.red,
        onPressed: _toggleFavorite,
      ),
      Text('${_favoriteCount}')
    ]);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount--;
      } else {
        _favoriteCount++;
      }
      _isFavorited = !_isFavorited;
    });
  }
}
