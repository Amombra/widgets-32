import 'package:flutter/material.dart';

class Heros extends StatefulWidget {
  @override
  createState() =>HerosState();
}

class HerosState extends State<Heros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
        backgroundColor: Colors.pink,
      ),
      body:Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: 'hero-rectangle',
                child: premiere_vue(),
              ),
              onTap: () => gotoDetailsPage(context),
            ),
            title: Text('Tap on the icon to view hero animation transition.', style: 
            TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
            ),
          ),
          
        ],
      ),
    ),
      );
  }
  Widget premiere_vue() {
    return Container(
      width: 70,
      height: 70,
      color: Colors.pink,
      child: Icon(Icons.accessible_forward, size: 25, color: Colors.white,),
    );
  }

  Widget vue_actuelle() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.accessible_forward, size: 50, color: Colors.white,),
          Icon(Icons.account_circle, size: 50, color: Colors.white,),
          Icon(Icons.add_comment, size: 50, color: Colors.white,),
          Icon(Icons.add_circle, size: 50, color: Colors.white,),
        ],
      ),
    );
  }

   void gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-opportune',
                child: vue_actuelle(),
              ),
              Text(
                  'I have a dream I have a dream I have a dream I have a dream I have a dream...',
                   textAlign: TextAlign.center,
                   ),
            ],
          ),
        ),
      ),
    ));
  }

}

