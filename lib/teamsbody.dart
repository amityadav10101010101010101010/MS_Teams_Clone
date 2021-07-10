

import 'package:flutter/material.dart';
import 'package:flutter_application_1/teams_body_homescreen.dart';
class TeamsBody extends StatelessWidget {
  const TeamsBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return StuffInTiles(listOfTiles[index]);
          },
          itemCount: listOfTiles.length,
        
      
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile, context);
  }

  Widget _buildTiles(MyTile t, BuildContext context) {
    if (t.children.isEmpty)
      return ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onTap: () => print("tap"),
          selected: true,
           title:  Text(t.title),tileColor: Colors.purple.shade200,);

    return  ExpansionTile(
      key:  PageStorageKey<int>(3),
      title:  Text(t.title),
      children: <Widget>[
        FlatButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  }, child: Text("Join Meeting"))
      ],
      
    );
  }
}

class MyTile {
  String title;
  List<MyTile> children;
  MyTile(this.title, [this.children = const <MyTile>[]]);
}

List<MyTile> listOfTiles = <MyTile>[
   MyTile(
    'Teams 1',
    <MyTile>[
      
           MyTile('General'),
          
          
        
    ],
    
  ),
   MyTile(
    'Team 2',
    <MyTile>[
      
           MyTile('General'),
          
        
    ],
  ),
   MyTile(
    'Team 3',
    <MyTile>[
      
           MyTile('General'),
          
        
    ],
  ),
  ];