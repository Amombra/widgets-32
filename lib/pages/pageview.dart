import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  @override
  createState() =>PageViewsState();
}

class PageViewsState extends State<PageViews> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child:PageView(
          children: <Widget>[
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.lightBlue,
            ),
            Container(
              color: Colors.redAccent,
            ),
          ],
        ),
        ),
      );
  }
}