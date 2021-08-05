import 'package:flutter/material.dart';
import 'package:navigation_trial/first_screen.dart';
import 'package:navigation_trial/fourth_screen.dart';
import 'package:navigation_trial/second_screen.dart';
import 'package:navigation_trial/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: FirstScreen(),
      initialRoute: '/',
      routes: {
        '/' : (context) => FirstScreen(),
        '/toSecond' : (context) => SecondScreen(),
        '/toThird' : (context) => ThirdScreen(ModalRoute.of(context)!.settings.arguments as String),
        '/toFourth' : (context) => FourthScreen(),
      },
    );
  }
}


