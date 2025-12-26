import 'package:flutter/material.dart';

void main() => runApp(ListViewExample());

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView Example")),
        body: ListView(
          children: [
            ListTile(title: Text("Item 1")),
            ListTile(title: Text("Item 2")),
            ListTile(title: Text("Item 3")),
            ListTile(title: Text("Item 4")),
          ],
        ),
      ),
    );
  }
}

/*
Teacher Note:
- ListView: Scrollable list
- Use ListTile or custom widgets
- Essential for dynamic data
*/
