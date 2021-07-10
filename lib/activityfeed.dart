import 'package:flutter/material.dart';
import 'package:flutter_application_1/join_meeting_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        actions: [
          IconButton(
            onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => JoinMeetingScreen()),);
            },
            icon: Icon(Icons.video_call),
          ),
          SizedBox(
            width: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_sharp),
          ),
          SizedBox(
            width: 16,
          ),
        ],
        title: Text(title),
      ),
      body: MessageBox(),
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
         
        children: [ IconButton(onPressed: (){}, icon: Icon(Icons.add_circle),),
          Expanded(
              child: TextField(decoration: InputDecoration(hintText: 'Reply'))),
          IconButton(onPressed: () {}, icon: Icon(Icons.send),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera),),
          IconButton(onPressed: (){}, icon: Icon(Icons.mic),),
        ],
      ),
    );
  }
}
