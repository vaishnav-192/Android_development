// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.welcomeRoute);

      setState(() {
        changeButton = false;
      });
    }
  }

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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "Assests/Images/undraw_hey_email_liaa.png",
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
                "Welcome: $name",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  // shadows: [
                  //   Shadow(
                  //     blurRadius: 8,
                  //     color: Colors.blueAccent,
                  //     offset: Offset(1, 1),
                  //   )
                  // ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 5) {
                        return "Password lenght should be atleast 5";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.welcomeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(120, 40),
                  //   ),
                  // ),

                  Material(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    child: InkWell(
                      // onTap: () async {
                      //   setState(() {
                      //     changeButton = true;
                      //   });

                      //   await Future.delayed(Duration(seconds: 1));
                      //   await Navigator.pushNamed(
                      //       context, MyRoutes.welcomeRoute);

                      //   setState(() {
                      //     changeButton = false;
                      //   });
                      // },
                      onTap: () => moveToHome(context),

                      // hoverColor: Colors.greenAccent,
                      // splashColor: Colors.white,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 140,
                        height: 50,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //   //shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                        //   borderRadius:
                        //       BorderRadius.circular(changeButton ? 50 : 8),
                        //   color: Colors.redAccent,
                        // ),
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
