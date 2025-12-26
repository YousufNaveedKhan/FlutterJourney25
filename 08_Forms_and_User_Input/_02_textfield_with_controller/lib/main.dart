import 'package:flutter/material.dart';

void main() => runApp(TextFieldWithController());

class TextFieldWithController extends StatefulWidget {
  @override
  State<TextFieldWithController> createState() => _TextFieldWithControllerState();
}

class _TextFieldWithControllerState extends State<TextFieldWithController> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("TextField With Controller")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Name",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print("User typed: ${nameController.text}");
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
