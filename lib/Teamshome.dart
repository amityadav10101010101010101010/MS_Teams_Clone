import 'package:flutter/material.dart';
import 'package:flutter_application_1/OCR2.dart';
import 'package:flutter_application_1/assignmentbody/assignment_main.dart';

import 'package:flutter_application_1/chatapp2/main.dart';
import 'news app/main.dart';
import 'package:flutter_application_1/qrcodemain.dart';
import './main_drawer.dart';
import 'chatbody.dart';
import 'activitybody.dart';
import './calendar.dart';
import 'teamsbody.dart';
import 'assignmentbody.dart';
import './todolist.dart';

import './OCR2.dart';
class Teamshome extends StatefulWidget {
  @override
  _TeamshomeState createState() => _TeamshomeState();
}

class _TeamshomeState extends State<Teamshome> {
  int _currentIndex = 2;
  String appBarText = "Teams";

  void handleNavigationBar(int value) => setState(() {
        int temp = _currentIndex;
        _currentIndex = value;
        if (_currentIndex == 1) {
          appBarText = "Chats";
        } else if (_currentIndex == 2) {
          appBarText = "Teams";
        } else if (_currentIndex == 5) {
          _currentIndex = temp;
          showModalBottomSheet(
            context: context,
            // builder: (context) => Container(
            //       child: Text('hi'),

            //     ),);
            builder: (context) {
              return SingleChildScrollView(
                              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.menu_book_outlined),
                      title: Text('News'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsMyApp()),);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.call),
                      title:  Text('Calls'),
                      onTap: () {
                         Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.restore),
                      title:  Text('Approvals'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AssgMyApp()),);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.note_alt_rounded),
                      title: Text('ToDo'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TodoList()),);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.qr_code_scanner_outlined),
                      title: Text('QR'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => QRMain()),);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.note),
                      title: Text('OCR-Picture To Text'),
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => OCR2MyApp()),);
                      },
                    ),
                   
                  ],
                ),
              );
            },
          );
        } else if (_currentIndex == 3) {
          appBarText = "Assignments";
        } else if (_currentIndex == 4) {
          appBarText = "Calendar";
        } else {
          appBarText = "Activity";
        }
      });

  Widget _getCurrentBody() {
    if (_currentIndex == 1) {
      return ChatMyApp();
    } else if (_currentIndex == 2) {
      return TeamsBody();
    } else if (_currentIndex == 3) {
      return AssignmentBody();
    } else if (_currentIndex == 4) {
      return CalendarBody();
    } else {
      return ActivityBody();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarText), 
        backgroundColor: Colors.purple.shade200,//App Bar's Name
      ),

      drawer:
          MainDrawer(), // Adding a drawer for editing profile and organisations
      body: _getCurrentBody(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: handleNavigationBar,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Teams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Assignment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
        ],
      ),
    );
  }
}



