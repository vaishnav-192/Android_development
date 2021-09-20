// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(
      //       fontSize: 40,
      //       color: Colors.blue,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "Assests/Images/undraw_secure_login_pdn4.png",
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              width: 360,
              height: 360,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 20,
              // child: Text(
              //   "This is just an empty box for giving space",
              //   style: TextStyle(
              //     fontSize: 10,
              //     color: Colors.greenAccent,
              //     backgroundColor: Colors.redAccent,
              //   ),
              // ),
            ),
            Text(
              "This is login Page: ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.welcomeRoute);
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(
                    minimumSize: Size(120, 40),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
