import 'package:flutter/material.dart';
import 'dart:math';

class Storage extends ChangeNotifier {
  var title = "Select favorites";
  List<String> selectedPlaces = [];

  randomize() {
    final randomIndex = Random().nextInt(selectedPlaces.length);
    title = selectedPlaces[randomIndex];

    notifyListeners();
  }
}

class HomeData extends InheritedWidget {
  final Storage storage = Storage();
  final Widget child;

  HomeData({this.child}): super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static HomeData of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(HomeData) as HomeData;
  }
}