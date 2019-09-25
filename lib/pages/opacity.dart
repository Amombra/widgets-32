import 'package:flutter/material.dart';

class Opacitys extends StatefulWidget {
  @override
  createState() =>OpacitysState();
}

class OpacitysState extends State<Opacitys> {
  bool _visible = false;
   var _value = 0.50;
  var _animOpacityValue = 1.0;

  var _bgColor = Colors.black87;
  var _textColor = Colors.white;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
     child: Column(
       children: <Widget>[
        GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top: 24, bottom: 24),
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: _bgColor),
                    ///Widget to animate the change in opacity
                    child: AnimatedOpacity(
                      opacity: _animOpacityValue,
                      duration: Duration(seconds: 1),
                      child: Text(
                        "Click here to toggle Animation",
                        style: TextStyle(
                            color: _textColor,
                            fontSize: 15.0,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onTap: () => setState(() {
                    _animOpacityValue == 1.0
                        ? _animOpacityValue = 0.0
                        : _animOpacityValue = 1.0;
                  }), 
        ),  
       ],
     ),
    ),
    );
  }
}
  


 
 