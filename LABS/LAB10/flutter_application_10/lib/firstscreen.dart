import 'package:flutter/material.dart';
import 'secondscreen.dart';
class FirstScreen extends StatelessWidget {
  final String imageUrl = "https://picsum.photos/250";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SecondScreen()),
            );
          },
          child: Hero(
            tag: "heroImage", // SAME tag
            child: Image.network(
              imageUrl,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}