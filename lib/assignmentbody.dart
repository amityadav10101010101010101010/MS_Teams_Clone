import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignmentbody/assignment_main.dart';

var context2;

class AssignmentBody extends StatelessWidget {
  const AssignmentBody({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    context2 = context;
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
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
    return _buildTiles(myTile);
  }

  Widget _buildTiles(MyTile t) {
    if (t.children.isEmpty)
      return ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: () {
            Navigator.push(
              context2,
              MaterialPageRoute(builder: (context) => AssgMyApp()),
            );
          },
          selected: true,
          title: Text(t.title));

    return ExpansionTile(
      key: PageStorageKey<int>(3),
      title: Text(t.title),
      children: t.children.map(_buildTiles).toList(),
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
    'Pending',
    <MyTile>[
      MyTile('Assignment Physics'),
      MyTile('Assignment Chemistry'),
      MyTile('Assignment Maths'),
    ],
  ),
  MyTile(
    'Submitted',
    <MyTile>[
      MyTile('Assg 2 Economics'),
      MyTile('Assg 3 CP'),
    ],
  ),
];
