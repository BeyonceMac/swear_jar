import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'Login.dart';
import 'SetUp1.dart';
import 'SetUp2.dart';
import 'Intro.dart';
import 'reuse/Themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/Intro', // Set the initial route
      theme: ThemeData(),
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      routes: {
        '/HomeScreen': (context) => const HomeScreen(),
        '/Login': (context) => Login(),
        '/Intro': (context) => Intro(),
        '/SetUp1': (context) => SetUp1(),
        '/SetUp2': (context) => SetUp2(),
      },
    );
  }
}

void main() => runApp(const MyApp());
