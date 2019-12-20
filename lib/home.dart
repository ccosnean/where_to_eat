import 'package:flutter/material.dart';
import 'components/pick_location_button.dart';
import 'components/restaurant_list.dart';
import 'components/title_card.dart';
import 'home_data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return HomeData(
      child: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(40, 60, 40, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TitleCard(),
                SizedBox(height: 10),
                RestaurantList(),
                SizedBox(height: 20),
                PickLocationButton(),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff5B4AEA), Color(0xff954DEB)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
      ),
    );
  }
}
