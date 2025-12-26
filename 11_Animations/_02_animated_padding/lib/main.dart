import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedPaddingExample(),
    );
  }
}

class AnimatedPaddingExample extends StatefulWidget {
  @override
  _AnimatedPaddingExampleState createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  bool _padded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedPadding Example")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(_padded ? 100 : 50),
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.padding),
        onPressed: () {
          setState(() {
            _padded = !_padded;
          });
        },
      ),
    );
  }
}
