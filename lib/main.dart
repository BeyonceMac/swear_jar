import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'Login.dart';
import 'Sign.dart';
import 'SetUp1.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SetUp1(),
    );
  }
}


void main() => runApp(MyApp());

final Map<String, WidgetBuilder> routes = {
  '/': (context) => MyApp(),
  '/HomeScreen': (context) => HomeScreen(),
  '/Login': (context) => Login(),
  '/Sign': (context) => Sign(),

};
