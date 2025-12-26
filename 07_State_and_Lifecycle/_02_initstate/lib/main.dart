import 'package:flutter/material.dart';

void main() => runApp(InitStateExample());

class InitStateExample extends StatefulWidget {
  @override
  State<InitStateExample> createState() => _InitStateExampleState();
}

class _InitStateExampleState extends State<InitStateExample> {
  String message = "";

  @override
  void initState() {
    super.initState();
    message = "Welcome to initState Example!";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("initState Example")),
        body: Center(child: Text(message, style: TextStyle(fontSize: 24))),
      ),
    );
  }
}
