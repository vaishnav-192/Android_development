// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catelog.dart';

class IteamWidget extends StatelessWidget {
  final Iteam iteam;
  const IteamWidget({Key? key, required this.iteam})
      : assert(iteam != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${iteam.name} was pressed");
        },
        leading: Image.network(iteam.imageUrl),
        title: Text(iteam.name),
        subtitle: Text(iteam.desc),
        trailing: Text(
          "\$${iteam.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
