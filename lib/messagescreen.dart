import 'package:flutter/material.dart';
import 'package:flutter_application_1/meeting_screen.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade200,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MeetingScreen()));
              },
              icon: Icon(Icons.video_call),
            ),
            SizedBox(width: 16),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.call),
            ),
            SizedBox(width: 16),
          ],
          title: Text(title),
        ),
        body: Column(
          children: [
            SizedBox(height: 16),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => MessageTile(
                  time: "2:00 PM",
                  sent: index.isEven,
                  message: messages[index]),
              itemCount: messages.length,
            )),
            MessageBox(),
          ],
        ));
  }
}

class MessageTile extends StatelessWidget {
  const MessageTile(
      {Key? key, required this.time, required this.message, this.sent = true})
      : super(key: key);
  final String time;
  final String message;
  final bool sent;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment:
            sent ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade200,
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  time,
                  style: TextStyle(fontSize: 12),
                ),
                Container(
                    child: Text(
                  message,
                  style: TextStyle(fontSize: 16),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
                child: TextField(
              decoration: InputDecoration(hintText: "Type a new message..."),
            )),
            IconButton(onPressed: () {}, icon: Icon(Icons.send))
          ],
        ));
  }
}

List<String> messages = [
  "elloHelo",
  "HiHelloHllo",
  "Hi",
  "Hello",
  "Hi",
  "Hello",
  "Hi",
  "Hello",
  "Hi",
  "Hello",
  "Hi",
  "Hello"
];
