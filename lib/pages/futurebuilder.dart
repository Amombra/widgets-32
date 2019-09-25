import 'package:flutter/material.dart';
//import 'package:http/http.dart';


class Futurebuilders extends StatefulWidget {
  @override
  createState() =>FuturebuildersState();
}

class FuturebuildersState extends State<Futurebuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Futurebuilders"),
        backgroundColor: Colors.pink,
      ),
      body: FutureBuilder(
        //future: http.get('http://awesome.data'),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
           // return AwesomeData(snapshot.data);
          } else{
            return CircularProgressIndicator();
          }
        },
      ),
      );
  }
  Widget moncontenu(){
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
          color: Colors.lightGreen,
          ),
    );
  }
}

