// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.red,
          elevation: 16,
          iconTheme: IconThemeData(
            color: Colors.white,
          )));
  static ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        color: Colors.black,
      ));
}
