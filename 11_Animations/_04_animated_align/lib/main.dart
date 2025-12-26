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
      home: AnimatedAlignExample(),
    );
  }
}

class AnimatedAlignExample extends StatefulWidget {
  @override
  _AnimatedAlignExampleState createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _left = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedAlign Example")),
      body: Container(
        width: double.infinity,
        child: AnimatedAlign(
          alignment: _left ? Alignment.centerLeft : Alignment.centerRight,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: FlutterLogo(size: 80),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_horiz),
        onPressed: () {
          setState(() {
            _left = !_left;
          });
        },
      ),
    );
  }
}
