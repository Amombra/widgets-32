import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class FadeImages extends StatefulWidget {
  @override
  createState() =>FadeImagesState();
}

class FadeImagesState extends State<FadeImages> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeInImage"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Center(child: Text("FadeInImage en 10 seconde une autre image")),
         moncontenu(),
       ],
     ),
    ),
    );
  }
  Widget moncontenu(){
    return Container(
     child: FadeInImage.assetNetwork(
       height: 250,
       fadeInDuration: const Duration(seconds: 5),
       fit: BoxFit.cover,
       placeholder: 'assets/1.jpg',
       image: 'https://cdn.pixabay.com/photo/2017/01/20/15/06/orange-1995056__340.jpg',
     ),
    );
  }
}


 

 
 