import 'package:flutter/material.dart';
import 'package:iti/Day1/task1/FirstScreen.dart';
import 'package:iti/home.dart';

import 'Day1/task2/Room.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home:  First (),
    );
  }
}

