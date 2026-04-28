import 'package:flutter/material.dart';
import 'todo.dart';
import 'detailscreen.dart';
class TodoScreen extends StatelessWidget {
  // Generate list of Todos
  final List<Todo> todos = List.generate(
    20,
    (index) => Todo(
      title: 'Todo $index',
      description: 'This is the description of Todo $index',
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
