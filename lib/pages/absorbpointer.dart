import 'package:flutter/material.dart';

class AbsorpPointers extends StatefulWidget {
  @override
  createState() =>AbsorpPointersState();
}

class AbsorpPointersState extends State<AbsorpPointers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorpPointer"),
        backgroundColor: Colors.pink,
      ),
      body: AbsorbPointer(absorbing: false,
      
        child: moncontenu() ,

        
            
        ),
      );
  }
  Widget moncontenu(){
    return  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {},
              )
            ],
          );
  }
}

