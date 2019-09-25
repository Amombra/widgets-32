import 'package:flutter/material.dart';

class Tooltips extends StatefulWidget {
  @override
  createState() =>TooltipsState();
}

class TooltipsState extends State<Tooltips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip"),
        backgroundColor: Colors.pink,
      ),
      body: Tooltip(
        message: "Club flutter",
        verticalOffset: 48,
        height: 24,
        child: moncontenu(),
      ),
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

