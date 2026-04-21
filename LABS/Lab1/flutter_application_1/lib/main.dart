import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Center(child:Text('Flutter Lab - 1')),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assests/peer-e-kamil.jpeg',
                height: 200,
                ),
                Image.network('assests/peer-e-kamil.jpeg',
                height: 200,)
                // Icon(Icons.star, color: Colors.orange),
                // SizedBox(width: 10),
                // Text(
                //   'Welcome',
                //   style: TextStyle(fontSize: 20),
                // ),
                // SizedBox(width: 10),
                // Icon(Icons.star, color: Colors.orange),
              ],
            ),
            // const SizedBox(height: 20),
            // // Second child of Column
            // const Text(
            //   'Eman Babar',
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // const SizedBox(height: 20), // Extra space
            // const Text(
            //   'BSSE - 6th Semester',
            //   style: TextStyle(fontSize: 18),
            // ),
          ],
        )
      ),
    );
  }
}