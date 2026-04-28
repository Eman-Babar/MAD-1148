import 'package:flutter/material.dart';
import 'todo.dart';
class DetailScreen extends StatelessWidget {
  final Todo todo;
  // Constructor receives Todo object
  DetailScreen({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          todo.description,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}