import 'package:flutter/material.dart';
import 'home.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "What to Eat?",
      theme: ThemeData(
//        fontFamily: "serif",
          ),
      home: Home(),
    );
  }
}
