import 'package:flutter/material.dart';
import '../home_data.dart';

class PickLocationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = HomeData.of(context);

    return Container(
      child: Column(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(text: "Tap on"),
                WidgetSpan(
                    child: Icon(Icons.location_on, color: Colors.white70)),
                TextSpan(text: "to pick your location"),
              ],
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  decoration: TextDecoration.none),
            ),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              data.storage.pickRandomPlace();
            },
            backgroundColor: Color(0xfff93d66),
            child: Icon(Icons.location_on),
          )
        ],
      ),
    );
  }
}
