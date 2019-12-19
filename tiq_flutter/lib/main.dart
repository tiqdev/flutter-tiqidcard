import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:toast/toast.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:
      AppBar(
          title: Text('Pilot ID', style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontFamily: 'Lilita'
          ),),
          centerTitle: true,
          titleSpacing: 0.5,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
      ),
      body:
      Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('assets/gitpilot.png'),
                height: 80.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[400],
            ),
            Text('Name', style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              fontFamily: 'Lilita'
            ),),
            SizedBox(height: 8.0,),
            Text('Tarık-KAYA', style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
              fontSize: 20.0,
              fontFamily: 'Lilita',
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30.0),
            Text('Current Pilot Level', style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontFamily: 'Lilita'
            ),),
            SizedBox(height: 8.0,),
            Text('23', style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontFamily: 'Lilita',
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height : 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text('tariqkaya24@gmail.com', style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 1.0,
                    fontFamily: 'Lilita',
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(
        backgroundColor: Colors.grey[850],
        onPressed: (){
          Toast.show("Çok Yakında",context, duration : Toast.LENGTH_LONG,gravity: Toast.BOTTOM);
        },
        child: Icon( Icons.whatshot, color: Colors.white,),
      ),
    );
  }
}
