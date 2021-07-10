import 'package:flutter/material.dart';

import 'messagescreen.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ChatTile(index: index);
      },
      itemCount: names.length,
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MessagesScreen(title: names[index]))),
      leading: CircleAvatar(
          foregroundImage: AssetImage(
              "assets/images/user_${index > 1 && index < 6 ? index : 2}.png")),
      title: Text(names[index]),
      subtitle: Text(msgs[index]),
      trailing: Text(time[index]),
    );
  }
}

List<String> names = [
  "Amit",
  "Atharv",
  "Bijendar",
  "Prasang",
  "Saksham",
  "Harsh",
  "Vikram",
];

List<String> msgs = [
  "Hey, hows it going",
  "Hi!",
  "Yo",
  "HeyHey",
  "Hey, hows it going",
  "Hey, hows it going",
  "Hey, hows it going"
];

List<String> time = [
  "6:30PM",
  "6:00PM",
  "5:15PM",
  "4:20PM",
  "3:22PM",
  "2:27PM",
  "1:30PM",
];

class FloactingButton extends StatelessWidget {
  const FloactingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.edit),
      backgroundColor: Colors.purple,
    ));
  }
}
