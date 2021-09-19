import 'package:flutter/material.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Vaishnav";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog app"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $name's $days of android dev"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
