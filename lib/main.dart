import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homescreen(),
  ));
}


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              child:  const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username"),
                  TextField(
                   decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                    prefix: Icon(Icons.inbox_outlined)
                   ), 
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.amberAccent,
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                 )
                ),
                onPressed: () {},
                child: Text('Submit'),
              ),
            
            ),
          )

              
        ],
      )
  
    ) ;
  }
}