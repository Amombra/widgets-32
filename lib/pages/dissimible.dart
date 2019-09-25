import 'package:flutter/material.dart';

class Dismissibles extends StatefulWidget {
  @override
  createState() =>DismissiblesState();
}

class DismissiblesState extends State<Dismissibles> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Dismissible(key: Key(UniqueKey().toString()
            ),
            child: Container(
              color: Colors.lightGreen,
            ),
            ),

             Dismissible(key: Key(UniqueKey().toString()
            ),
            child: Container(
              color: Colors.orange,
            ),
            ),
             Dismissible(key: Key(UniqueKey().toString()
            ),
            child: Container(
              color: Colors.yellow,
            ),
            ),
          ],
        ),
      ),
      );
  }
}