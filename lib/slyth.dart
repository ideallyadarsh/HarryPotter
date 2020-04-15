import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Slyth extends StatefulWidget {
  @override
  _SlythState createState() => _SlythState();
}

class _SlythState extends State<Slyth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.volume_off,
            ),
        onPressed:(){
        } ,
          ),
        ],
        title: Center(
          child: Text("Welcome To Slytherin",
            style: TextStyle(fontSize: 25.0,fontFamily: 'Magic1'),),),
        backgroundColor: Colors.green[800],
      ),
    );
  }
}
