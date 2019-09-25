import 'package:flutter/material.dart';
import 'built.dart';

class SliverGrids extends StatefulWidget {
  @override
  createState() =>SliverGridsState();
}

class SliverGridsState extends State<SliverGrids> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverGrids"),
        backgroundColor: Colors.pink,
      ),
      body:CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 4
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return Container(
                  alignment: Alignment.center,
                  color: Colors.pink[100 * (index % 9)],
                  child:Text('grid N° $index')
                );
              },
              childCount: 14,
              ),
          ),
        ],
      )
      );
  } 
}