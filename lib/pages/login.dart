import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  @override
  createState() =>LoginAppState();
}

class LoginAppState extends State<LoginApp> with SingleTickerProviderStateMixin{
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
        title: Text("Login"),
        backgroundColor: Colors.pink,
      ),
      body:  Container(
        
          child:Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Text('Logins',
                  style: TextStyle(
                    fontSize: 25,
                    color:Colors.black
                    ),
                    ),
                Card(
                  elevation: 10,
                  child: Container(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  height: 300,
                    width: 350,
                    child:Column(
                      children: <Widget>[
                    Draggable(
                      child: moncontenus(),
                      feedback: Material(
                        child: LimitedBox(maxHeight: 100, maxWidth: 100,
                      child: moncontenus(),
                      ),
                      ),
                      childWhenDragging: moncontenus(),
                    ),
                    Draggable(
                      child:moncontenuss(),
                      feedback:Material(
                        
                      child: LimitedBox(maxHeight: 100, maxWidth: 100,
                      child: moncontenuss(),
                      ),
                      ),
                      
                      childWhenDragging: moncontenuss(),
                  ),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                  RaisedButton(child:Text('SE CONNECTER', style: 
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  ),color: Colors.blue,onPressed: ()=>{}
                  ),
                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    FadeTransition(
                      opacity: _animation,
                      child: Text("BIENVENU DANS LE CLUB FLUTTER"),
                    )
                  ],),
                  ],
                  )
                  )
                  ),

                  ],
                  ),
                  ),
                  )
                  );
                
                }
                 Widget moncontenus(){
                    return TextField(
                        decoration: InputDecoration(
                        labelText: 'Username', 
                        icon: Icon(Icons.verified_user)   
                    ),
                    );
                    }
                  }
                  Widget moncontenuss(){
                    return TextField(
                        decoration: InputDecoration(
                        labelText: 'password',
                        icon: Icon(Icons.verified_user)
                        ),
                       obscureText: true,
                    );
                    }
                  
          

            
               
