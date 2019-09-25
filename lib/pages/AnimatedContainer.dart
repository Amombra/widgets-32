import 'package:flutter/material.dart';

class AnimatedContainers extends StatefulWidget {
  @override
  createState() => AnimatedContainersState();
}

class AnimatedContainersState extends State<AnimatedContainers> {
    bool choix  = false;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            color: choix ? Colors.pink : Colors.orange,
            width: choix ? 300 : 200,
            height: choix ? 200 : 300,
            curve: Curves.easeOutCirc,
            alignment: Alignment.topRight,
            duration: Duration(microseconds: 5),
            child: moncontenu(),
            
          ),
          SizedBox(height: 40),
           RaisedButton(
             color: Colors.orange,
             child: Text("CLIQUER ICI",
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.white,
               fontWeight: FontWeight.bold,
             ),
             ),
             padding: EdgeInsets.only(left: 40, right: 40),
          onPressed: (){
            setState((){
              choix = !choix;
            });
            
            },
          )
        ],
       
      ),
     
    ),
    );
  }
  Widget moncontenu(){
    return Center(
      child: Container(
        child: Text("AimatedContainer",
         textAlign: TextAlign.center, 
         style: TextStyle(fontWeight: FontWeight.bold,
         ),
         ),
         
        padding: EdgeInsets.all(20),
        height: 90,
        width: 120,
        
        color: Colors.white,
      ),
    );

  
  }
}
