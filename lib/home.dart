import 'package:flutter/material.dart';
import 'components/selectable_card.dart';
import 'components/pick_location_button.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

  String pickRandomPlace() {
    final randomIndex = Random().nextInt(_eatingPlaces.length);
    return _eatingPlaces[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
//                  Image.asset('assets/images/icon.png'),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: _buildCards(),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
              SizedBox(height: 50),
              PickLocationButton(onTap: () {
                setState(() {});
              }),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff5B4AEA), Color(0xff954DEB)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
    );
  }

  List<SelectableCard> _buildCards() {
    return _eatingPlaces
        .map((p) => SelectableCard(
      title: p,
      onChanged: (value) {
        if (value) {
          selectedPlaces.add(p);
        } else {
          selectedPlaces.remove(p);
        }
        print(selectedPlaces);
      },
    )).toList();
  }
}
