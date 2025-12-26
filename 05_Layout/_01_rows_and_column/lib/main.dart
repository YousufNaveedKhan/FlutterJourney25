import 'package:flutter/material.dart';

void main() => runApp(RowColumnExample());

class RowColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Row & Column Example")),
        body: Column(
          children: [
            Text("Column Example"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.green),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
Teacher Note:
- Row: Horizontal layout
- Column: Vertical layout
- mainAxisAlignment / crossAxisAlignment control position
*/
