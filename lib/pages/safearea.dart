import 'package:flutter/material.dart';

class Safeareas extends StatefulWidget {
  @override
  createState() =>SafeareasState();
}

class SafeareasState extends State<Safeareas> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safeareas"),
        backgroundColor: Colors.pink,
      ),
     body:SafeArea(
       child:  ListView(
       children:List.generate(
           5, (i) => Card(
             elevation: 15,
             child: Container(
               height: 320,
               width: 350,
               padding: EdgeInsets.all(10),
               child: Column(
                 children: <Widget>[
                   Image.asset("assets/4.jpg",
                   height: 170,
                   width: 330,
                   fit:BoxFit.cover),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                        Icon(Icons.edit_location, color: Colors.pink, size: 30,),
                        Icon(Icons.shopping_cart, color: Colors.pink, size: 30,),
                        Icon(Icons.delete, color: Colors.pink, size: 30,),
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
         ),
     ),
     top: true,
     bottom: true,
     left: false,
     right: true,
     )
    );
  }
}

