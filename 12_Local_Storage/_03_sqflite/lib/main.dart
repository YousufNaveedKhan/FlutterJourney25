import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() => runApp(const MyApp());

class Student {
  int? id;
  String name;
  Student({this.id, required this.name});
  Map<String, dynamic> toMap() => {'id': id, 'name': name};
}

class DBHelper {
  static Database? _db;
  Future<Database> get database async => _db ??= await initDB();

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'students.db');
    return openDatabase(path, version: 1, onCreate: (db, version) => 
      db.execute('CREATE TABLE info (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)'));
  }

  Future<void> insertStudent(Student student) async {
    final db = await database;
    await db.insert('info', student.toMap());
  }

  // UPDATE METHOD
  Future<void> updateStudent(Student student) async {
    final db = await database;
    await db.update('info', student.toMap(), where: 'id = ?', whereArgs: [student.id]);
  }

  Future<List<Student>> getStudents() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('info');
    return List.generate(maps.length, (i) => Student(id: maps[i]['id'], name: maps[i]['name']));
  }

  Future<void> deleteStudent(int id) async {
    final db = await database;
    await db.delete('info', where: 'id = ?', whereArgs: [id]);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DBHelper db = DBHelper();
  final TextEditingController controller = TextEditingController();
  List<Student> students = [];
  int? editingStudentId; 

  @override
  void initState() { super.initState(); loadData(); }

  void loadData() async {
    final data = await db.getStudents();
    setState(() => students = data);
  }

  void handleSubmit() async {
    if (controller.text.isEmpty) return;

    if (editingStudentId == null) {
      // INSERT
      await db.insertStudent(Student(name: controller.text));
    } else {
      // UPDATE
      await db.updateStudent(Student(id: editingStudentId, name: controller.text));
      editingStudentId = null; 
    }
    
    controller.clear();
    loadData();
  }

  void startEdit(Student student) {
    setState(() {
      controller.text = student.name;
      editingStudentId = student.id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SQFLite CRUD")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: controller, decoration: InputDecoration(labelText: "Student Name")),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: handleSubmit, 
              child: Text(editingStudentId == null ? "Add Student" : "Update Student")
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (_, i) => ListTile(
                  title: Text(students[i].name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(icon: Icon(Icons.edit, color: Colors.blue), 
                        onPressed: () => startEdit(students[i])),
                      IconButton(icon: Icon(Icons.delete, color: Colors.red), 
                        onPressed: () => {db.deleteStudent(students[i].id!), loadData()}),
                    ],
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