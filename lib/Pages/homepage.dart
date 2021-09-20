// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

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
      // body: Center(
      //   child: Container(
      //     child: Text("Welcome to $name's $days of android dev"),
      //   ),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: Container(
                  child: Text(
                    "Welcome to $name's $days of android development",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //height: 40,
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.loginRoute);
                      },
                      child: Text("Go to Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(120, 40),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
