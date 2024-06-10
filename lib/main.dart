import 'package:flutter/material.dart';
import 'package:sessionproject/AppNavigation.dart';
import 'package:sessionproject/components/moviesCard.dart';
import 'package:sessionproject/navigation.dart';
import 'package:sessionproject/navigation/bottomNavigation.dart';
import 'package:sessionproject/navigation/setState.dart';
import 'package:sessionproject/screen/aboutus.dart';
import 'package:sessionproject/screen/examples.dart';
import 'package:sessionproject/screen/homeScreen.dart';
import 'package:sessionproject/textInput.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

