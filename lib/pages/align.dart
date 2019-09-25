import 'package:flutter/material.dart';

class Aligns extends StatefulWidget {
  @override
  createState() =>AlignsState();
}

class AlignsState extends State<Aligns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align"),
        backgroundColor: Colors.pink,
      ),
      body: moncontenu(),
      );
  }
  Widget moncontenu(){
    return  Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text("Flutter Club", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}

