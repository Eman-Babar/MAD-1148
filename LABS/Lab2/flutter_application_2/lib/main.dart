//LAB2
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen()
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,   // Parent Column alignment
          children: [
            // Child 1: Blue Header
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),
            //20px Vertical Spacing
            const SizedBox(height: 20),
            //Child 2: Row with two buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Push to edges
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}