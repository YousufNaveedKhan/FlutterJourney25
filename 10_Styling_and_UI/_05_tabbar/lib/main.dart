import 'package:flutter/material.dart';

void main() => runApp(TabBarExample());

class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Example"),
            bottom: TabBar(
              tabs: [
                Tab(text: "Home"),
                Tab(text: "Profile"),
                Tab(text: "Settings"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Home Content")),
              Center(child: Text("Profile Content")),
              Center(child: Text("Settings Content")),
            ],
          ),
        ),
      ),
    );
  }
}
