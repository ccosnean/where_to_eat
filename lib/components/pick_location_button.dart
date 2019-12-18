import 'package:flutter/material.dart';

class PickLocationButton extends StatelessWidget {
  final GestureTapCallback onTap;

  PickLocationButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          RichText(
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
            onPressed: onTap,
            backgroundColor: Color(0xfff93d66),
            child: Icon(Icons.location_on),
          )
        ],
      ),
    );
  }
}