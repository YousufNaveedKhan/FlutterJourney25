import 'package:flutter/material.dart';

void main() => runApp(GridViewExample());

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("GridView Example")),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Container(
              margin: EdgeInsets.all(8),
              color: Colors.blue[(index + 1) * 100],
              child: Center(child: Text("Item ${index + 1}")),
            );
          }),
        ),
      ),
    );
  }
}

/*
Teacher Note:
- GridView.count: specify number of columns
- Flexible for gallery or grid layouts
*/
