import 'package:flutter/material.dart';

class Floatingbuttons extends StatefulWidget {
  @override
  createState() =>FloatingbuttonsState();
}

class FloatingbuttonsState extends State<Floatingbuttons> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionbutton"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        moncontenu(),
        SizedBox(height: 25),
        Center(child: Text("Je suis un  FloatingActionbutton",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 20,
        ),
        ),
        ),
        SizedBox(height: 25),
        moncontenu(),
        
        
       ],
     ),
    ),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: (){

      },
      label: Text("CLUB FLUTTER", style: TextStyle(fontWeight: FontWeight.bold, ),),
      icon: Icon(Icons.share),
      backgroundColor: Colors.pink,
      hoverElevation: 10.0,
      hoverColor: Colors.black,
      highlightElevation:100 ,
    )
    );
  }
  Widget moncontenu(){
    return Container(
      height: 15,
      width: 300,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
          color: Colors.lightGreen,
          ),
    );
  }
}