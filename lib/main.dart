import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

import 'package:flutter_application_1/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home:  WelcomeScreen(),
    );
  }
}
