import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  String ? title;
  Aboutus({super.key,this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aboutus"),
      ),
      body: Text("${title}"),
    );
  }
}