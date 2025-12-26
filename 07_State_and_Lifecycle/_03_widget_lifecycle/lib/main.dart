import 'package:flutter/material.dart';

void main() => runApp(LifecycleExample());

class LifecycleExample extends StatefulWidget {
  @override
  State<LifecycleExample> createState() => _LifecycleExampleState();
}

class _LifecycleExampleState extends State<LifecycleExample> {
  @override
  void initState() {
    super.initState();
    print("initState called");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies called");
  }

  @override
  void dispose() {
    print("dispose called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Widget Lifecycle")),
        body: Center(child: Text("Check console logs")),
      ),
    );
  }
}
