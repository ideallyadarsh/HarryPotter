import 'package:flutter/material.dart';

class Services{
  String title;
  String url;
  String text;
  Services({this.url,this.text,this.title})
  {
    Scaffold(
      appBar :AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(
          child: Text("$title",
            style: TextStyle(
              fontFamily: 'Harry',
              color: Colors.blueGrey[300],
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),),
        ),
      ),
    );
  }
}