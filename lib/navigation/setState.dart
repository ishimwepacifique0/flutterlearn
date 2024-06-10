import 'package:flutter/material.dart';
import 'package:sessionproject/fetching/fetch.dart';

class LearnState extends StatefulWidget {
  const LearnState({super.key});

  @override
  State<LearnState> createState() => _LearnStateState();
}

class _LearnStateState extends State<LearnState> {
 
 int _currentInitial = 0;

  static List<Widget> _widgetOptions= <Widget> [
    UserListScreen(),
    CallScreen(),
    Settingcreen(),
    Cameracreen()
  ]; 


void _onTapOnScreen (int index){
    setState((){
      _currentInitial = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter state"),

      ),
      body:_widgetOptions.elementAt(_currentInitial),

    bottomNavigationBar: Container(
      color: Colors.grey,
      child: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem> [
          
          BottomNavigationBarItem(
            icon:Icon(Icons.home,color:Colors.black),
            label:'Status'
            ),
            BottomNavigationBarItem(
         
            icon:Icon(Icons.call,color:Colors.black),
            label:'Call'
            ),
            BottomNavigationBarItem(
             
            icon:Icon(Icons.camera,color:Colors.black),
            label:'Camera'
            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.settings,color:Colors.black),
            label:'Setting'
            )
      
        ],
        currentIndex: _currentInitial ,
        onTap: _onTapOnScreen,
        selectedLabelStyle: TextStyle(color: Colors.black12), // Change the color of the selected label
        unselectedLabelStyle: TextStyle(color: Colors.black),
      
      
      ),
    )
    );
  }
}


class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Status screen'),);
  }
}


class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('call screen'),);
  }
}



class Settingcreen extends StatelessWidget {
  const Settingcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Setting screen'),);
  }
}



class Cameracreen extends StatelessWidget {
  const Cameracreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Status screen'),);
  }
}