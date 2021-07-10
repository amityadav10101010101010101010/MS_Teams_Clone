import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './home.dart';

import 'const.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChatMyApp());
}

class ChatMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Demo',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: HomeScreen(currentUserId: 'Id',),
      debugShowCheckedModeBanner: false,
    );
  }
}