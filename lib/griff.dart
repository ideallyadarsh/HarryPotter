import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Griff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[900],
      appBar: AppBar(
        actions: <Widget>[

        ],
        title: Center(
          child: Text("Welcome To Griffendor",
              style: TextStyle(fontSize: 25.0,fontFamily: 'Magic1'),),),
        backgroundColor: Colors.amber[800],
      ),
    );
  }
}

