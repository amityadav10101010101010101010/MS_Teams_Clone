import 'package:flutter/material.dart';
import 'activityfeed.dart';
class ActivityBody extends StatelessWidget {
  const ActivityBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ActivityTile(index: index);
      },
      itemCount: names.length,
    );
  }
}

class ActivityTile extends StatelessWidget {
  const ActivityTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityScreen(title: names[index]))
            ),
      
      leading: CircleAvatar(
          foregroundImage: AssetImage(
              "assets/images/user_${index > 1 && index < 4 ? index : 2}.png")),
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
  "Harsh",
  
];

List<String> msgs = [
  "Hey, hows it going",
  "Hi!",
  "Yo",
  "HeyHey",
  "dgnudg",
  
];

List<String> time = [
  "6:30PM",
  "6:00PM",
  "5:15PM",
  "4:20PM",
  "3:40PM",
];
