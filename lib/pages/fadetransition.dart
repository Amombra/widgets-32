import 'package:flutter/material.dart';

class FadeTransitions extends StatefulWidget {
  
  @override
  createState() =>FadeTransitionsState();
}

class FadeTransitionsState extends State<FadeTransitions>  with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _animation;

 @override
 void initState(){
   _controller = AnimationController(
     vsync: this,
     duration : Duration(seconds:7),
   );
   _animation = Tween(
     begin: 0.0,
     end: 1.0,
   ).animate(_controller);
 }

 @override
 void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeTransition"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
     child: Column(
       children: <Widget>[
         FadeTransition(
           opacity: _animation,
           child: moncontenus(),
         )
         
       ],
     ),
    ),
    );
  }
 

Widget moncontenus(){
    return Container(transform:Matrix4.skewY(0.3),
      height: 150,
      width: 300,
      color: Colors.amber,
      margin: EdgeInsets.only(top: 150),
    );
  }
}