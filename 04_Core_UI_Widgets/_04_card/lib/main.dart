import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("This is a Card"),
            ),
          ),
        ),
      ),
    );
  }
}
