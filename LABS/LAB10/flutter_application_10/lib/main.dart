//LAB10
import 'package:flutter/material.dart';
//import 'firstroute.dart';
//import 'firstscreen.dart';
import 'todoscreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
      //home: FirstRoute(),
      //home: FirstScreen(),
    );
  }
}