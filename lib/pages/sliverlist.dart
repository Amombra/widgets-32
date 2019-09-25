import 'package:flutter/material.dart';
import 'built.dart';

class Sliverlists extends StatefulWidget {
  @override
  createState() =>SliverlistsState();
}

class SliverlistsState extends State<Sliverlists> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliverlist"),
        backgroundColor: Colors.pink,
      ),
      body: 
        
          CustomScrollView(
            slivers: <Widget>[
              SliverList(
            delegate: SliverChildListDelegate([
                expandedimage()
            ]),
          ),
            ],
          ),
      );
  }
}

Widget expandedimage(){
  return Column(
    children: <Widget>[
      Container(
        color:Colors.red,
        height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.yellow,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.pink,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.green,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.deepPurple,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.white,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.black,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.redAccent,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.amber,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.cyanAccent,
         height: 90,
        width: double.infinity,
      ),
      Container(
        color:Colors.teal,
         height: 90,
        width: double.infinity,
      ),
    ],
  );
}