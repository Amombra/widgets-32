import 'package:flutter/material.dart';

class Wraps extends StatefulWidget {
  @override
  createState() =>WrapsState();
}

class WrapsState extends State<Wraps> {
    bool choix  = false;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceBetween,
        spacing: 10.0,
        runSpacing: 20.0,
        children: <Widget>[

          moncontenu(),
          moncontenus(),
          moncontenu(),
          moncontenus(),
          moncontenuss(),
          moncontenu(),
        ],

      ),
          
        ],
       
      ),
     
    ),
    );
  }
  Widget moncontenu(){
    return Container(
      height: 100,
      width: 100,
      color: Colors.lightGreen,
    );
  }
}


Widget moncontenus(){
    return Container(
      height: 100,
      width: 100,
      color: Colors.yellow,
    );
  }
  Widget moncontenuss(){
    return Container(
      height: 100,
      width: 100,
      color: Colors.lightBlue,
    );
  }


 