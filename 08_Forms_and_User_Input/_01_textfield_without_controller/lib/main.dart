import 'package:flutter/material.dart';

void main() => runApp(TextFieldNoController());

class TextFieldNoController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("TextField Without Controller")),
        body: Center(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter Name",
            ),
            onChanged: (value) {
              print("User typed: $value");
            },
          ),
        ),
      ),
    );
  }
}

/*
Teacher Note:
- Simple TextField
- onChanged captures input
- No controller needed for simple cases
*/
