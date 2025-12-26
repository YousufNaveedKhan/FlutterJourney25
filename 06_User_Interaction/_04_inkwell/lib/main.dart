import 'package:flutter/material.dart';

void main() => runApp(InkWellExample());

class InkWellExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("InkWell Example")),
        body: Center(
          child: InkWell(
            onTap: () => print("InkWell tapped"),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text("Tap Me"),
            ),
          ),
        ),
      ),
    );
  }
}

/*
Teacher Note:
- InkWell provides ripple effect
- Better for material design feedback
*/
