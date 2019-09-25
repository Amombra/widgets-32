import 'package:flutter/material.dart';


List _buildList(int count){
          List<Widget> listItems = List();

          for (int i = 0; i < count; i++){
            listItems.add(Padding(padding: EdgeInsets.all(20),
            child: Text("jffjjffj", style: TextStyle(fontSize: 25
            ),
            ),
            ),
            );
          }
          return listItems;
        }