import 'package:flutter/material.dart';

class Positioneds extends StatefulWidget {
  @override
  createState() =>PositionedsState();
}

class PositionedsState extends State<Positioneds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Positioned"),
        backgroundColor: Colors.pink,
      ),
      body:Stack(children: <Widget>[
      Positioned.fill(
        child: FlutterLogo(),
      )
    ],
    ),
      );
  }
  Widget moncontenu(){
    return Stack(children: <Widget>[
      Positioned.fill(
        child: FlutterLogo(),
      )
    ],
    );
  }
}

