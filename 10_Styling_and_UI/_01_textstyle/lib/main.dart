import 'package:flutter/material.dart';

void main() => runApp(TextStyleExample());

class TextStyleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("TextStyle Example")),
        body: Center(
          child: Text(
            "Styled Text",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
