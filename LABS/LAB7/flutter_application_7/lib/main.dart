//import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
void main() {
  runApp(const ColorMixerApp());
}
class ColorMixerApp extends StatelessWidget {
  const ColorMixerApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorMixer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ColorMixer extends StatefulWidget {
  const ColorMixer({super.key});
  @override
  State<ColorMixer> createState() => _ColorMixerState();
}
class _ColorMixerState extends State<ColorMixer> {
  double red = 0;
  double green = 0;
  double blue = 0;
  double boxSize = 150;
  Color get currentColor =>
      Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1);
  String get hexCode =>
      '#${red.toInt().toRadixString(16).padLeft(2, '0')}${green.toInt().toRadixString(16).padLeft(2, '0')}${blue.toInt().toRadixString(16).padLeft(2, '0')}'.toUpperCase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mood & Color Mixer")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onLongPress: () {
              print("HEX Code: $hexCode");
            },
            onHorizontalDragUpdate: (details) {
              setState(() {
                boxSize += details.delta.dx;
                boxSize = boxSize.clamp(50, 300);
              });
            },
            child: Container(
              height: boxSize,
              width: boxSize,
              color: currentColor,
            ),
          ),
          const SizedBox(height: 20),
          Text("HEX: $hexCode", style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          buildSlider("Red", red, Colors.red, (v) {
            setState(() => red = v);
          }),
          buildSlider("Green", green, Colors.green, (v) {
            setState(() => green = v);
          }),
          buildSlider("Blue", blue, Colors.blue, (v) {
            setState(() => blue = v);
          }),
        ],
      ),
    );
  }
  Widget buildSlider(
      String label, double value, Color color, Function(double) onChanged) {
    return Column(
      children: [
        Text("$label: ${value.toInt()}"),
        Slider(
          min: 0,
          max: 255,
          value: value,
          activeColor: color,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
//--------------------TAsk1------------------------
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: GestureTask(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
// class GestureTask extends StatefulWidget {
//   const GestureTask({super.key});
//   @override
//   State<GestureTask> createState() => _GestureTaskState();
// }
// class _GestureTaskState extends State<GestureTask> {
//   Color boxColor = Colors.blue;
//   double borderRadius = 0;
//   final Color initialColor = Colors.blue;
//   final double initialRadius = 0;
//   void changeColor() {
//     final random = Random();
//     setState(() {
//       boxColor = Color.fromARGB(
//         255,
//         random.nextInt(256),
//         random.nextInt(256),
//         random.nextInt(256),
//       );
//     });
//   }
//   void toggleShape() {
//     setState(() {
//       borderRadius = borderRadius == 0 ? 100 : 0;
//     });
//   }
//   void resetBox() {
//     setState(() {
//       boxColor = initialColor;
//       borderRadius = initialRadius;
//     });
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text("Resetting...")),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("GestureDetector Task")),
//       body: Center(
//         child: GestureDetector(
//           onTap: changeColor,
//           onDoubleTap: toggleShape,
//           onLongPress: resetBox,
//           child: Container(
//             height: 200,
//             width: 200,
//             decoration: BoxDecoration(
//               color: boxColor,
//               borderRadius: BorderRadius.circular(borderRadius),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//-----------------TASK2--------------------------------------------
//   runApp(const SliderApp());
// }
// class SliderApp extends StatelessWidget{
//   const SliderApp({super.key});
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       //home: GestureTask(),
//       home: SliderTask(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
// class SliderTask extends StatefulWidget {
//   const SliderTask({super.key});
//   @override
//   State<SliderTask> createState() => SliderTaskState();
// }
// class SliderTaskState extends State<SliderTask> {
//   double value = 50;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Slider Task")),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "Value: ${value.toStringAsFixed(1)}",
//             style: const TextStyle(fontSize: 24),
//           ),
//           const SizedBox(height: 20),
//           // Material Slider
//           Slider(
//             min: 0.0,
//             max: 100.0,
//             divisions: 10,
//             value: value,
//             label: value.toStringAsFixed(1),
//             onChanged: (newValue) {
//               setState(() {
//                 value = newValue;
//               });
//             },
//           ),
//           const SizedBox(height: 20),
//           // Cupertino Slider
//           CupertinoSlider(
//             min: 0.0,
//             max: 100.0,
//             value: value,
//             onChanged: (newValue) {
//               setState(() {
//                 value = newValue;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }