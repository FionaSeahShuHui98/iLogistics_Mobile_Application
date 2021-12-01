import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Application',
      theme: ThemeData(
        backgroundColor: Color(0xff2A4D69),
      ),
      home: login_screen(),
    );
  }
}