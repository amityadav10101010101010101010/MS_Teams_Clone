import 'package:flutter/material.dart';
import 'package:flutter_application_1/universal_variables.dart';
import 'meeting_screen.dart';
import 'profile_screen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;
  List pageOptions = [
    MeetingScreen(),
    ProfileScreen(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.purple.shade200,
        selectedLabelStyle: montserratStyle(17, Colors.purple.shade200),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: montserratStyle(17, Colors.black),
        currentIndex: page,
        onTap: (idx) {
          setState(() {
            page = idx;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.video_call, size: 32,),
          title: Text('Meetings'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 32,),
          title: Text('Profile'),),
         
        ],
      ),
      body: pageOptions[page],
    );
  }
}
