import 'package:fantasy_league_web/bottomNavBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fantasy League',
debugShowCheckedModeBanner: false,
      home: bottomnavbar(),
    );
  }
}

