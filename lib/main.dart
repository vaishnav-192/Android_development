// ignore_for_file: prefer_const_constructors, unused_local_variable


import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homepage.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/Pages/welcome_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

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
      debugShowCheckedModeBanner: false,
      //home: homepage(),
      themeMode: ThemeMode.light,
      // theme: ThemeData(
      //     primarySwatch: Colors.red,
      //     fontFamily: GoogleFonts.lato().fontFamily,
      //     appBarTheme: AppBarTheme(
      //         color: Colors.red,
      //         elevation: 16,
      //         iconTheme: IconThemeData(
      //           color: Colors.white,
      //         ))),
      theme: MyTheme.lightTheme,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.welcomeRoute: (context) => welcome_page(),
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.loginRoute: (context) => login_page(),
      },
    );
  }
}
