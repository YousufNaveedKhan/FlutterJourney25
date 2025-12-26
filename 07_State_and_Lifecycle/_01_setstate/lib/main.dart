import 'package:flutter/material.dart';

void main() => runApp(SetStateExample());

class SetStateExample extends StatefulWidget {
  @override
  State<SetStateExample> createState() => _SetStateExampleState();
}

class _SetStateExampleState extends State<SetStateExample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("setState Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count: $count", style: TextStyle(fontSize: 24)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text("Increment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
