import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CustomButton(text: "Click Me"),
        ),
      ),
    );
  }
}

// Custom Widget
class CustomButton extends StatelessWidget {
  final String text;

  CustomButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Button Clicked");
      },
      child: Text(text),
    );
  }
}

/*
Custom Widgets:
- Reusable UI
- Clean code
*/
