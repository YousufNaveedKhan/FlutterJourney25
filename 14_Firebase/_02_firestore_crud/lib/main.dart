import 'package:_02_firestore_crud/firebase_options.dart';
import 'package:_02_firestore_crud/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirestoreService firestore_service = FirestoreService();
  final TextEditingController noteCtrl = TextEditingController();

  void openBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(controller: noteCtrl),
        actions: [
          ElevatedButton(
            onPressed: () {
              firestore_service.addNote(noteCtrl.text);
              noteCtrl.clear();
              Navigator.pop(context);
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase example")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBox();
        },
        child: Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: firestore_service.getNotesStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List notesList = snapshot.data!.docs;

            return ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                DocumentSnapshot document = notesList[index];
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;

                String noteText = data['note'];

                return ListTile(title: Text(noteText));
              },
            );
          } else {
            return Text("No Notes...");
          }
        },
      ),
    );
  }
}
