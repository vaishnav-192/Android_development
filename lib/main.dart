import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/Pages/welcome_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pi = 3.14;
    bool male = true;
    num temperature = 35.5;
    //num can take both int and double
    var anything = "Tuesday";
    //var can take anything, it may be string, int, oe double , anything literally
    const constant_val = 3.14;

    return MaterialApp(
      //home: homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => welcome_page(),
        "/home": (context) => homepage(),
        "/login": (context) => login_page(),
      },
    );
  }
}
