import 'package:flutter/material.dart';

void main() => runApp(ButtonsExample());

class ButtonsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Buttons Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("ElevatedButton clicked");
                },
                child: Text("ElevatedButton"),
              ),
              TextButton(
                onPressed: () {
                  print("TextButton clicked");
                },
                child: Text("TextButton"),
              ),
              OutlinedButton(
                onPressed: () {
                  print("OutlinedButton clicked");
                },
                child: Text("OutlinedButton"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
Teacher Note:
- ElevatedButton: Raised with background
- TextButton: Flat button
- OutlinedButton: Border only
*/
