import 'package:flutter/material.dart';
class ConfirmationScreen extends StatelessWidget {
  final String name;
  final String size;

  ConfirmationScreen({required this.name, required this.size});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirmation")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Name: $name"),
          Text("Pizza Size: $size"),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text("Confirm"),
          ),
        ],
      ),
    );
  }
}