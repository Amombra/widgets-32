import 'package:flutter/material.dart';

class Tables extends StatefulWidget {
  @override
  createState() =>TablesState();
}

class TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tables"),
        backgroundColor: Colors.pink,
      ),
      body: Table(
        columnWidths: {1: FractionColumnWidth(.2)},
        border: TableBorder.all(),
        children: [
          TableRow(
            children: [
              moncontenu(),
              moncontenus(),
              moncontenuss(),
            ],
          ),

          TableRow(
            children: [
              moncontenuss(),
              moncontenu(),
              moncontenusss(),
            ],
            ),
        ],
      ),
      );
  }
  Widget moncontenu(){
    return Container(
      height: 80,
      width: 80,
      color: Colors.lightBlue,
    );
  }

    Widget moncontenus(){
    return Container(
      height: 80,
      width: 80,
      color: Colors.orange,
    );
  }

   Widget moncontenuss(){
    return Container(
      height: 80,
      width: 80,
      color: Colors.yellow,
    );
  }

   Widget moncontenusss(){
    return Container(
      height: 80,
      width: 80,
      color: Colors.lightGreen,
    );
  }
}

