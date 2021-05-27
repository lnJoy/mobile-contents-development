import 'package:flutter/material.dart';
import 'package:verysad/Screens/Welcome/welcome_screen.dart';
import 'package:verysad/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mobile',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Color(0xFFF8F8FA),
      ),
      home: WelcomeScreen(),
    );
  }
}
