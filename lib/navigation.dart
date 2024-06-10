import 'package:flutter/material.dart';
import 'package:sessionproject/getData/getData.dart';
import 'package:sessionproject/screen/aboutus.dart';
import 'package:sessionproject/screen/homeScreen.dart';



class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'/' ,
        routes: {
          '/':(context)=>Display(),
          '/aboutus':(context) => Aboutus()
        },
    );
  }
}

