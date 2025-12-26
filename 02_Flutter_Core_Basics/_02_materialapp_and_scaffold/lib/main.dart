import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics',
      home: Scaffold(
        appBar: AppBar(
          title: Text("MaterialApp & Scaffold"),
        ),
        body: Center(
          child: Text("Screen Structure"),
        ),
      ),
    );
  }
}

/*
MaterialApp:
- App-level configuration
Scaffold:
- Basic screen structure
*/
