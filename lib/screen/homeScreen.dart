import 'package:flutter/material.dart';
import 'package:sessionproject/screen/aboutus.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List  userData = [

      {
        "id":1,
        "title": "About Us",
        "icon": Icons.person
      },
      {
        "id":2,
        "title": "Contact Us",
        "icon": Icons.person
      },
      {
        "id":3,
        "title": "Privacy Policy",
        "icon": Icons.person
      },
      {
        "id":4,
        "title": "Terms & Conditions",
        "icon": Icons.person
      }
    ];
     
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
      ),
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder:(context,index){
          return ListTile(
            leading: Icon(userData[index]["icon"]),
            title: Text(userData[index]["title"]),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Aboutus(title:"${userData[index]["id"]} : ${userData[index]["title"]}" ,)));
            },
          );

        }
        
        )

      
    );
  }
}