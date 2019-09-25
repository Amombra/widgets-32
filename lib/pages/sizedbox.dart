import 'package:flutter/material.dart';

class Sizedboxs extends StatefulWidget {
  @override
  createState() =>SizedboxsState();
}

class SizedboxsState extends State<Sizedboxs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SiezdBox"),
        backgroundColor: Colors.pink,
      ),
      body: SizedBox(
        child: moncontenu(),
        width: 100,
        height: 100,

        ),
      );
  }
  Widget moncontenu(){
    return Center(
      child: Container(
      height: 80,
      width: 95,
      margin: EdgeInsets.all(10),
      color: Colors.blue,
      child: Text("Contenu", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
    );
  }
}

