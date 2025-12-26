import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnTapOnPressedExample(),
    );
  }
}

class OnTapOnPressedExample extends StatelessWidget {
  const OnTapOnPressedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("onTap vs onPressed"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "onPressed (Buttons)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                debugPrint("ElevatedButton Pressed");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("onPressed triggered")),
                );
              },
              child: const Text("Press Me"),
            ),

            const SizedBox(height: 40),

            const Text(
              "onTap (Any Widget)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                debugPrint("Container Tapped");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("onTap triggered")),
                );
              },
              child: Container(
                width: double.infinity,
                height: 80,
                alignment: Alignment.center,
                color: Colors.orange,
                child: const Text(
                  "Tap This Container",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
