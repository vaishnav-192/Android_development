import 'package:flutter/material.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Welcome to my first app"),
      ),
    );
  }
}