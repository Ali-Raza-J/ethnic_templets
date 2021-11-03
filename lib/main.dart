import 'package:ethnic/Screens/screen1.dart';
import 'package:ethnic/Screens/screen2.dart';
import 'package:ethnic/Screens/screen3.dart';
import 'package:ethnic/Screens/screen4.dart';
import 'package:ethnic/Screens/screen5.dart';
import 'package:ethnic/Screens/screen6.dart';
import 'package:ethnic/Screens/screen7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen2(),
    );
  }
}
