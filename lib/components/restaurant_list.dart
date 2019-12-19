import 'package:flutter/material.dart';
import 'selectable_card.dart';

class RestaurantList extends StatefulWidget {
  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  final List<String> _eatingPlaces = [
    'Don Taco',
    'Trattoria',
    'Chickenos',
    'Lord of the Wings',
    'One o\'Clock',
    'McDonalds',
    'KFC',
    'Andy\'s Pizza',
    'Beef House',
    'Star Kebab',
    'Blinoff',
  ];

  List<String> selectedPlaces = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset('assets/images/icon.png'),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: _buildCards(context),
            ),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(230),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }

  List<SelectableCard> _buildCards(BuildContext context) {
    return _eatingPlaces.map((place) {
      return SelectableCard(
        title: place,
        onChanged: (value) {
          if (value) {
            selectedPlaces.add(place);
          } else {
            selectedPlaces.remove(place);
          }
          print(selectedPlaces);
        },
      );
    }).toList();
  }
}
