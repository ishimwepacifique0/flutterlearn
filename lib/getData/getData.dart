import 'package:flutter/material.dart';
import 'package:sessionproject/fetching/card_resubale.dart';
import 'package:sessionproject/fetching/movies.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  ListView.builder(
        itemCount: UsersData.length,
        itemBuilder: (context,index){
          return MovieCard(userData: UsersData[index]);
        }
        ),
    );
  }
}