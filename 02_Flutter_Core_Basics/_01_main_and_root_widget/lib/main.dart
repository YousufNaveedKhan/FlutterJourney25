import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

// First Screen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello Flutter"),
      ),
    );
  }
}

/*
Teacher Note:
- main() is the entry point
- runApp starts the app
- Everything starts from the root widget
*/
