import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
class Raven extends StatefulWidget {
  @override
  _RavenState createState() => _RavenState();
}

class _RavenState extends State<Raven> {
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.stop();
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        actions: <Widget>[

        ],
        title: Center(
          child: Text("Welcome To RavenClaw ",
            style: TextStyle(fontSize: 25.0,fontFamily: 'Magic1'),),),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
