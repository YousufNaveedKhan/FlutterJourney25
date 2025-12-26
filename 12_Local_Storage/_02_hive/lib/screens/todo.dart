import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController controller = TextEditingController();
  Box? todoBox;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todoBox = Hive.box('todoBox');
  }

  void addTodo() {
    if (controller.text.isNotEmpty) {
      todoBox?.add(controller.text);
      controller.clear();
    }
  }

  void deleteTodo(int index) {
    todoBox?.deleteAt(index);
  }

  void editTodo(int index) {
    controller.text = todoBox?.getAt(index);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Todo"),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Edit todo"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                controller.clear();
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  todoBox?.putAt(index, controller.text);
                }
                controller.clear();
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (todoBox == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: Text("Meri todoapp")),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "Enter todo here",
              prefixIcon: Icon(Icons.notes_outlined),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: addTodo, child: Text("Add")),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: todoBox!.listenable(),
              builder: (context, Box box, _) {
                if (box.isEmpty) {
                  return Center(child: Text("No Todos"));
                }
                return ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(box.getAt(index)),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () => editTodo(index),
                              icon: Icon(Icons.edit, color: Colors.blue),
                            ),
                            IconButton(
                              onPressed: () => deleteTodo(index),
                              icon: Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
