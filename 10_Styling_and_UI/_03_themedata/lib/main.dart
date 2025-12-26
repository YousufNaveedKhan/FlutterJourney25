import 'package:flutter/material.dart';

void main() => runApp(ThemeDataExample());

TextStyle mytext() {
  return TextStyle(
    color: Colors.indigo[900],
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}

TextStyle mytextparams({
  Color mycolor = Colors.indigo,
  FontWeight weighttext = FontWeight.bold,
}) {
  return TextStyle(fontSize: 40, color: mycolor, fontWeight: weighttext);
}

class ThemeDataExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Theme Example",
      theme: ThemeData(
        primaryColor: Colors.green,
        hintColor: Colors.orange,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Theme Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This text uses ThemeData bodyText1"), 
              Text("This text uses TextTheme bodyLarge", style: TextTheme.of(context).bodyLarge,), 
              Text("This text uses mytext()", style: mytext(),), 
              Text("mytextparams: Default (Indigo)", style: mytextparams(),), 
              Text("mytextparams: Overwritten (teal)", style: mytextparams(mycolor: Colors.teal, weighttext: FontWeight.bold),), 

            ],
          ),
        ),
      ),
    );
  }
}
