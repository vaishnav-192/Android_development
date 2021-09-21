// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catelog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/iteam_widget.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatelogModel.iteams[0]);
    int days = 30;
    String name = "Vaishnav";
    return Scaffold(
      appBar: AppBar(
          title: SizedBox(
        child: Center(
          child: Text(
            "Catelog App",
            textAlign: TextAlign.justify,
          ),
        ),
      )),
      //or we can control all appbars through the main file. better look at that

      // body: Center(
      //   child: Container(
      //     child: Text("Welcome to $name's $days of android dev"),
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return IteamWidget(
              iteam: dummyList[index],
            );
          },
        ),
      ),

      // child: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       // Padding(
      //       //   padding:
      //       //       const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      //       //   child: Container(
      //       //     child: Text(
      //       //       "Welcome to $name's $days of android development",
      //       //       style: TextStyle(
      //       //         color: Colors.blue,
      //       //         fontSize: 20,
      //       //         fontWeight: FontWeight.bold,
      //       //       ),
      //       //     ),
      //       //     //height: 40,
      //       //   ),
      //       // ),
      //       // SizedBox(
      //       //   height: 10,
      //       // ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, MyRoutes.loginRoute);
      //         },
      //         child: Text("Go to Login"),
      //         style: TextButton.styleFrom(
      //           minimumSize: Size(120, 40),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      drawer: MyDrawer(),
    );
  }
}
