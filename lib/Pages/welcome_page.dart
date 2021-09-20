// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: SizedBox(
        child: Text(
          "Menu",
        ),
      )),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Weclome to the Menu",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
