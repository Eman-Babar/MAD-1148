import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String imageUrl = "https://picsum.photos/250";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Hero(
          tag: "heroImage",
          child: Image.network(
            imageUrl,
            width: 300,
          ),
        ),
      ),
    );
  }
}