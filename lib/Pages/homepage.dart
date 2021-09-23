// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catelog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/iteam_widget.dart';
import 'dart:convert';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load_data();
  }

  load_data() async {
    await Future.delayed(Duration(seconds: 2));
    var catelogJson = await rootBundle.loadString("Assests/files/catelog.json");
    // print(catelogJson);
    var decodedData = jsonDecode(catelogJson);
    var productsData = decodedData["products"];
    //print(productsData);
    CatelogModel.iteams = List.from(productsData)
        .map<Iteam>((item) => Iteam.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
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
        child: (CatelogModel.iteams != null && CatelogModel.iteams.isNotEmpty)
            ?
            // ListView.builder(
            //   physics: BouncingScrollPhysics(),
            //   itemCount: CatelogModel.iteams.length,
            //   itemBuilder: (context, index) {
            //     return IteamWidget(
            //       iteam: CatelogModel.iteams[index],
            //     );
            //   },
            // )
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatelogModel.iteams[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: GridTile(
                      header: Container(
                        child: Text(item.name),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                        ),
                      ),
                      child: Image.network(
                        item.imageUrl,
                      ),
                      footer: Container(
                        child: Text(item.price.toString()),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatelogModel.iteams.length,
              )
            : Center(
                child: CircularProgressIndicator(),
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
