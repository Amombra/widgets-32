import 'package:flutter/material.dart';

class Streams extends StatefulWidget {
  @override
  createState() =>StreamsState();
}

class StreamsState extends State<Streams> {
  Stream<int> count() async* {
    int i = 1;
    while (true){
      yield i++;
    }

    
  }

  Widget _myStream =  Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.only(bottom: 15),

    );

     Widget _myStreams =  Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.only(bottom: 15),

    );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream"),
        backgroundColor: Colors.pink,
      ),
     
    );
  }
  Widget moncontenu(){
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.only(bottom: 15),

    );
  }

  
}

