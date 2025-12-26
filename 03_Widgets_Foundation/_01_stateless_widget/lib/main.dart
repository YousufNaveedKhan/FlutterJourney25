import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatelessExample(),
    );
  }
}

class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("I do not change"),
      ),
    );
  }
}

/*
StatelessWidget:
- UI does not change
- No state/data updates
*/
