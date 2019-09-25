import 'package:flutter/material.dart';
import 'dart:ui';

class Backdropfilters extends StatefulWidget {
  @override
  createState() =>BackdropfiltersState();
}

class BackdropfiltersState extends State<Backdropfilters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Backdropfilters"),
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: <Widget>[
          Image.asset("assets/1.jpg", fit:BoxFit.fill),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX:5, sigmaY:5),
              child: Container(color: Colors.pink.withOpacity(0),),
            ), 
          ),
        ],
      )
      );
  }
  Widget moncontenu(){
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
          color: Colors.lightGreen,
          ),
    );
  }
}

