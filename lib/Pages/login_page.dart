// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
