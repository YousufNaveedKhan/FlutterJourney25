import 'package:flutter/material.dart';

void main() => runApp(GestureDetectorExample());

class GestureDetectorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("GestureDetector Example")),
        body: Center(
          child: GestureDetector(
            onTap: () => print("Tapped"),
            onDoubleTap: () => print("Double Tapped"),
            onLongPress: () => print("Long Pressed"),
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.green,
              child: Text("Interact with me", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
