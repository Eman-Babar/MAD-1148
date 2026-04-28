//LAB5
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }
  Expanded buildKey(Color color, int number){
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(number);
        },
        child: Container(
          width: double.infinity,
          color: color,
          child: const Center(
            child: Text(
            "Xylophone",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.yellow, 2),
            buildKey(Colors.green, 3),
            buildKey(Colors.orange, 4),
            buildKey(Colors.brown, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}