import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final ThemeData appTheme = ThemeData(
    primarySwatch: Colors.teal,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
    cardTheme: const CardThemeData(
      elevation: 5,
      margin: EdgeInsets.all(10),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Task 3: Theme on Widgets"),
        ),
        body: Column(
          children: [
            /// Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text("This is a themed card"),
              ),
            ),
            const SizedBox(height: 20),
            /// Button
            ElevatedButton(
              onPressed: () {},
              child: const Text("Themed Button"),
            ),
          ],
        ),
      ),
    );
  }
}
  //---------------Task2------------
// class MyApp extends StatelessWidget {
//   final ThemeData customTheme = ThemeData(
//     textTheme: const TextTheme(
//       bodyLarge: TextStyle(
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//         color: Colors.blue,
//       ),
//       bodyMedium: TextStyle(
//         fontSize: 16,
//         color: Colors.black87,
//       ),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: customTheme,
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Task 2: Text Theme")),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Text(
//                 "This is a paragraph styled using textTheme. "
//                 "It demonstrates font size, weight and color.",
//                 style: Theme.of(context).textTheme.bodyLarge,
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 "Flutter allows centralized styling using ThemeData.",
//                 style: Theme.of(context).textTheme.bodyMedium,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }//---------------------Task1---------------------------------
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
  // @override
  // State<MyApp> createState() => _MyAppState();
// class _MyAppState extends State<MyApp> {
//   bool isDark = false;
//       theme: isDark ? ThemeData.dark(): ThemeData.light(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Task1"),
//           actions: [
//             IconButton(
//               icon: Icon(
//                 isDark ? Icons.light_mode: Icons.dark_mode,
//               ),
//               onPressed: (){
//                 setState(() {
//                   isDark = !isDark;
//                 });
//               },
//               )
//           ],
//         ),
//         body: const Center(
//           child: Text("Theme Toggle Example"),
//         ),
//       )
//     );
// }
// }