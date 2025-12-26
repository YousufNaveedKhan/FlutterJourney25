import 'package:flutter/material.dart';

void main() => runApp(ExpandedFlexibleExample());

class ExpandedFlexibleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Expanded & Flexible")),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(height: 50, color: Colors.red),
            ),
            Flexible(
              flex: 1,
              child: Container(height: 50, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Teacher Note:
- Expanded: takes available space
- Flexible: takes space according to flex
- Flex helps responsive layouts
*/
