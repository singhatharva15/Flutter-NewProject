import 'package:flutter/material.dart';
import 'package:new_project/tiles.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tiles(),    
    );
  }
}
