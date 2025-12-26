import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Item 1"),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            Text("Item 2"),
          ],
        ),
      ),
    );
  }
}
