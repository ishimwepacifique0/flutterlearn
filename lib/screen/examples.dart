import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variables
  String name = 'John Doe';
  final String greeting = 'Hello';

  // List
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  // Function to add a fruit to the list
  void addFruit() {
    setState(() {
      fruits.add(name);
    });
  }

  // Function to get a greeting message
  String getGreeting(String name) {
    return '$greeting, $name!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(getGreeting(name)),
            TextField(
              onChanged: (text) {
                setState(() {
                  name = text;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(fruits[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  addFruit();
                },
                child: Text('Add Grapes'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
