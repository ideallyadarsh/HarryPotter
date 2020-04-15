import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'griff.dart';
import 'main.dart';
 class Welcome extends StatefulWidget {
   @override
   _WelcomeState createState() => _WelcomeState();
 }
 
 class _WelcomeState extends State<Welcome> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         backgroundColor: Colors.grey[900],
         title: Center(
           child: Text("Choose Your House",
             style: TextStyle(
               fontFamily: 'Harry',
               color: Colors.blueGrey[300],
               letterSpacing: 1.5,
               fontWeight: FontWeight.bold,
               fontSize: 22.0,
             ),),
         ),
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[

             Row(
             children: <Widget>[
               Expanded(flex: 1,
                 child: FlatButton(child: Image.network('https://i.gifer.com/9k1y.gif'),
                   onPressed: (){
                     Navigator.pushNamed(context, "/griff");
                   },
                 ),
               ),
               SizedBox(width: 10.0,),
               Expanded( flex:1,
                   child: FlatButton(child: Image.network('https://pa1.narvii.com/6327/da14b93343807eb29b7114cfb5b974dcee5aa973_00.gif'),
                   onPressed: (){
                     Navigator.pushNamed(context, "/slyth");
                   },
                   ),
               ),
             ],
           ),
           Row(
               children: <Widget>[
                 Expanded(flex: 1,
                   child: FlatButton(child: Image.network('https://pa1.narvii.com/6570/b59e1fb7b01df1035afac222b0662ab2795d1c1c_00.gif'),
                   onPressed: (){
                     Navigator.pushNamed(context, "/raven");
                   },
                   ),
                 ),
                 SizedBox(width: 10.0,),
                 Expanded( flex:1,
                     child: FlatButton(child: Image.network('https://data.whicdn.com/images/212114413/original.gif'),
                    onPressed: (){     Navigator.pushNamed(context, "/huffle");},
                     ),
                 ),
               ],
             ),

         ],
       ),
     );
   }
 }
 