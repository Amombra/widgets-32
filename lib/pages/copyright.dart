import 'package:flutter/material.dart';

class Copyrights extends StatefulWidget {
  @override
  createState() =>CopyrightsState();
}

class CopyrightsState extends State<Copyrights> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Copyright"),
        backgroundColor: Colors.pink,
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        Card(
             elevation: 15,
             child: Container(
               height: 420,
               width: 350,
               padding: EdgeInsets.all(3),
               child: Column(
                 children: <Widget>[
                   Image.asset("assets/5.jpg",
                   height: 280,
                   width: 330,
                   fit:BoxFit.cover),
                   SizedBox(
                     height: 20,
                   ),
                   SizedBox(height: 20,),
                   Text("Nom:Katché",
                   textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15,
                      color: Colors.grey,
                  ),
                  ),
                   SizedBox(height: 20,),
                   Text("Prénom: Amombra Ange Opportune",
                   textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,
                      color: Colors.grey,
                  ),
                  ),

                   SizedBox(height: 20,),
                   Text("GitHub: https://github.com/Amombra/flutter-widgets",
                   textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12,
                      color: Colors.grey,
                  ),
                  ),
                 ],
               ),
             ),
           ),
       ],
      ),
      );
  }
}