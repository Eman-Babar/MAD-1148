import 'package:flutter/material.dart';
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go Back to First Route"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}