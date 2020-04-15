import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Huffle extends StatefulWidget {
  @override
  _HuffleState createState() => _HuffleState();
}

class _HuffleState extends State<Huffle> {
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.stop();
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      appBar: AppBar(
        actions: <Widget>[

        ],
        title: Center(
          child: Text("Welcome To Hufflepuff",
            style: TextStyle(fontSize: 25.0,fontFamily: 'Magic1'),),),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
