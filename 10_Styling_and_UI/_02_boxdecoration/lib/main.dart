import 'package:flutter/material.dart';

void main() => runApp(BoxDecorationExample());

class BoxDecorationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("BoxDecoration Example")),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 3),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
            ),
            child: Center(child: Text("Box", style: TextStyle(color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
