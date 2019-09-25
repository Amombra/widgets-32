import 'package:flutter/material.dart';

class Sliverappbars extends StatefulWidget {
  @override
  createState() =>SliverappbarsState();
}

class SliverappbarsState extends State<Sliverappbars> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child:CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text("mon Sliverappbar"),
              leading: Icon(Icons.account_box),
              backgroundColor: Colors.lightGreen,
              floating: true,
              snap: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                expandedimage()
              ]),
            ),
          ],
        ),
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