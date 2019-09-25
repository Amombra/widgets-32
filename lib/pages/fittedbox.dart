import 'package:flutter/material.dart';

class Fittedboxs extends StatefulWidget {
  @override
  createState() =>FittedboxsState();
}

class FittedboxsState extends State<Fittedboxs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fittedboxs"),
        backgroundColor: Colors.pink,
      ),
      body:FittedBox(
        alignment: Alignment.center,
        child: Card(
             elevation: 15,
             child: Container(
               height: 320,
               width: 350,
               padding: EdgeInsets.all(10),
               child: Column(
                 children: <Widget>[
                   Image.asset("assets/3.jpg",
                   height: 170,
                   width: 330,
                   fit:BoxFit.cover),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                        Icon(Icons.edit_location, color: Colors.lightGreen, size: 30,),
                        Icon(Icons.shopping_cart, color: Colors.lightGreen, size: 30,),
                        Icon(Icons.delete, color: Colors.red, size: 30,),
                     ],
                   ),
                   SizedBox(height: 20,),
                   Text("I have a dream I have a dream I have a dream I have a dream I have a dream I have a dream",
                   textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15,
                      color: Colors.black,
           ),
           ),
                 ],
               ),
             ),
           ),
      )
      );
  }
}

