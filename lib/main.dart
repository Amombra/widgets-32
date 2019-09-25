import 'package:flutter/material.dart';
import './pages/AnimatedContainer.dart';
import './pages/wrap.dart';
import './pages/floatingactionbutton.dart';
import './pages/expanded.dart';
import './pages/fadeinimage.dart';
import './pages/fadetransition.dart';
import'./pages/home.dart';
import './pages/slide.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:Scaffold(        
        body: Homes(),
      ),
    );
  }
}

