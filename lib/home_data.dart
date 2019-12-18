import 'package:flutter/material.dart';
import 'dart:math';

class Storage extends ChangeNotifier {
  String title = "Pick your places";
  List<String> selectedPlaces = [];

  pickRandomPlace() {
    final randomIndex = Random().nextInt(selectedPlaces.length);
    title = selectedPlaces[randomIndex];
    print(selectedPlaces);
    print(title);

    notifyListeners();
  }
}

class HomeData extends InheritedWidget {
  final Storage storage = Storage();
  final Widget child;

  HomeData({this.child}): super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static HomeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
}