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
      home: AnimatedCrossFadeExample(),
    );
  }
}

class AnimatedCrossFadeExample extends StatefulWidget {
  @override
  _AnimatedCrossFadeExampleState createState() => _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedCrossFade Example")),
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          secondChild: Container(
            color: Colors.red,
            width: 150,
            height: 150,
          ),
          crossFadeState: _showFirst
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_vert),
        onPressed: () {
          setState(() {
            _showFirst = !_showFirst;
          });
        },
      ),
    );
  }
}
