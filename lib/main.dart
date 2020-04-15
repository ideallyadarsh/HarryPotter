import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:harrypotter/huffle.dart';
import 'package:harrypotter/raven.dart';
import 'package:harrypotter/slyth.dart';
import 'griff.dart';
import 'package:harrypotter/Welcome.dart';

void main() => runApp(MaterialApp(
  initialRoute:'/home' ,
  routes: {
    '/home':(context)=>Home(),
    '/Welcome':(context)=>Welcome(),
    '/griff':(context) =>Griff(),
    '/slyth':(context)=>Slyth(),
    '/raven':(context)=>Huffle(),
    '/huffle':(context)=>Raven(),
  },
));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/hpst1.mp3"),
    );
    final bool isLooping = assetsAudioPlayer.loop; //true / false
    assetsAudioPlayer.loop = true; //set loop as true

    assetsAudioPlayer.isLooping.listen((loop){
      //listen to loop
    });

    assetsAudioPlayer.setVolume(0.5);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/hogwarts.gif"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(

        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SafeArea(
              child: Text("Harry Potter",
                style: TextStyle(
                  fontFamily: 'Harry',
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 50.0,
                  shadows: [
                  Shadow(
                  color: Colors.blueAccent,
                  blurRadius: 10.0,
                  offset: Offset(5.0, 5.0),
                  ),
                  ],
                ),
              ),
            ),
            RaisedButton(
              hoverColor: Colors.lightBlue,
              onPressed: () {
                showDialog(
                  context: context,builder: (_) => AssetGiffyDialog(
                  image : Image.asset('assets/hp2.gif',
                    fit: BoxFit.fill,),
                  title: Text('Which Spell is Used above!!',
                    style: TextStyle(fontSize: 22.0,fontFamily: "Lumos" ,fontWeight: FontWeight.w600),
                  ),
                  buttonCancelColor: Colors.black,
                  buttonOkColor:  Colors.black,
                  buttonOkText: Text("Vanguardia \n leviosa",
                    style: TextStyle(fontSize:16.0,fontFamily: "Lumos",color: Colors.white),
                  ),
                  buttonCancelText: Text(" Petrificus \nTotalus",
                    style: TextStyle(fontSize: 16.0,fontFamily: "Lumos",color: Colors.white),),
                  entryAnimation: EntryAnimation.TOP_LEFT,
                  onOkButtonPressed: () {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,builder: (_) => AssetGiffyDialog(
                      image : Image.asset('assets/hp2.gif',
                        fit: BoxFit.fill,),
                      title: Text('Correct!', style: TextStyle(fontSize: 22.0,color: Colors.green,fontFamily: "Lumos" ,fontWeight: FontWeight.w600),),
                     onlyOkButton:true ,
                      buttonOkColor: Colors.green,
                      buttonOkText: Text("You Are Allowed to Enter \n\t\t\t      Hogwats!!",style: TextStyle(fontSize: 25.0,fontFamily: 'Magic1'),),
                      entryAnimation: EntryAnimation.TOP_LEFT,
                      onOkButtonPressed: () {
                        Navigator.of(context).pop();assetsAudioPlayer.stop();
                        Navigator.pushReplacementNamed(context, "/Welcome");
                      },
                    ),
                    );
                  },
                ),
                );
              },
                child: Center(
                  child: Text("Alhomora!!",
                  style: TextStyle(
                    fontFamily: 'Lumos',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                  ),
                ),
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


