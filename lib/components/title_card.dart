import 'package:flutter/material.dart';
import '../home_data.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TitleCard extends StatefulWidget {
  @override
  _TitleCardState createState() => _TitleCardState();
}

class _TitleCardState extends State<TitleCard> {
  _updateTitle() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final data = HomeData.of(context);
    data.storage.addListener(_updateTitle);

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Text(
            "You've randomized:",
            style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
          AutoSizeText(
            data.storage.title,
            maxLines: 1,
            style: TextStyle(
              color: Color(0xfff93d66),
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white.withAlpha(230),
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
