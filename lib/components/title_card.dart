import 'package:flutter/material.dart';
import '../home_data.dart';

class TitleCard extends StatefulWidget {
  @override
  _TitleCardState createState() => _TitleCardState();
}

class _TitleCardState extends State<TitleCard> {

  _updateListener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    HomeData data = HomeData.of(context);
    data.storage.addListener(_updateListener);

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Text(
            "You've randomized:",
            style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.none,
              fontSize: 14,
            ),
          ),
          Text(
            data.storage.title,
            style: TextStyle(
              color: Colors.redAccent,
              decoration: TextDecoration.none,
              fontSize: 35,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(230),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}