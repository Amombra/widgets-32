import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contenus extends StatefulWidget {
  @override
  createState() =>ContenusState();
}

class ContenusState extends State<Contenus> {
  

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text("Mon contenu"),
        backgroundColor: Colors.pink,
      ),
      body:Center(
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(text: "Sans le savoir",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  
                  ),
                  TextSpan(
                    text: " vous avez peut etre sur votre ordinateur",
                    style: TextStyle(
                      fontSize:13,
                      color: Colors.black
                    ),
                  ),
                ],

              ),
            ),

             Row(
                children : <Widget> [
                  InkWell(
                      child:Text("des programmes qui sont potentiellement dangereux",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize:13,
                    ),
                    ) ,
                      onTap: (){
                        key.currentState.showSnackBar(SnackBar(
                          elevation: 10,
                          content: Icon(Icons.access_alarms),
                          duration: Duration(seconds: 5),
                          
                          ),
                          );
                          },
                    ), 
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Container(
                 padding: EdgeInsets.only(top: 10, bottom: 10, left:20, right: 20),
                  child:  RaisedButton(
                      onPressed: _launchURL,
                  color: Colors.black,
                  child: Text("READ MORE",
                   style: TextStyle(
                     color: Colors.white,
                   ), 
                ),
               ),
               ),
              ],
            ),
          ],
        ),
      ),
      
      );
  }
 

}
_launchURL() {
  launch('https://github.com/Amombra/flutter-widgets/edit/master/README.md');
}

