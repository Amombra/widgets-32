import 'package:flutter/material.dart';

class Expandeds extends StatefulWidget {
  @override
  createState() =>ExpandedsState();
}

class ExpandedsState extends State<Expandeds> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
     child: Column(
       children: <Widget>[
         Expanded(
           flex: 3,
           child: moncontenu(),
         ),
         Expanded(
           flex:3,
           child: moncontenus(),
         ),

         Expanded(
           flex:3,
           child: moncontenuss(),
         ),
       ],
     ),
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


 Widget moncontenuss(){
    return Container(
      height: 100,
      width: 300,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
          color: Colors.lightGreen,
          ),
    );
  }


Widget moncontenus(){
    return Container(
      height: 100,
      width: 100,
      color: Colors.amber,
      margin: EdgeInsets.only(bottom: 15),
    );
  }
 
 