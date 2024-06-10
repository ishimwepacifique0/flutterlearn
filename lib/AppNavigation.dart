import 'package:flutter/material.dart';
import 'package:sessionproject/getData/getData.dart';
import 'package:sessionproject/navigation/bottomNavigation.dart';
import 'package:sessionproject/main.dart';
import 'package:sessionproject/screen/aboutus.dart';
import 'package:sessionproject/screen/homeScreen.dart';

class AppNavigation extends StatelessWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
         routes: {
          '/home': (context)=>Display(),
          '/aboutus':(context)=>Aboutus()
         },

    );
  }
}