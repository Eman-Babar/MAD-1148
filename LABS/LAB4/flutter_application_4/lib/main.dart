//LAB4
import 'package:flutter/material.dart';
void main() {
  runApp(Application4());
}
class Application4 extends StatefulWidget {
  const Application4({super.key});
  @override
  State<Application4> createState() => _Application4State();
}
class _Application4State extends State<Application4> {
  bool isfollowed = false;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter LAB - 04"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
                  ),
                ),
                Text(
                  'Eman Babar',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Mobile Developer',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isfollowed = !isfollowed;
                    });
                  },
                  child: Text(isfollowed ? 'Unfollow' : 'Follow'),
                ),
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () {
                    setState(() {
                      score++;
                    });
                  },
                ),
                Card(
                  elevation: 6,
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(Icons.star, color: Colors.orange),
                    title: Text(
                      'Profile Score:',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Total Likes: $score',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter LAB - 04"),
//           backgroundColor: Colors.purpleAccent,
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(20),
//                   child: CircleAvatar(
//                     radius: 60,
//                     backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
//                   ),
//                 ),
//                 Text(
//                   'Eman Babar',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   'Mobile Developer',
//                   style: TextStyle(fontSize: 18, color: Colors.grey),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       isfollowed = !isfollowed;
//                     });
//                   },
//                   child: Text(
//                     isfollowed ? 'Unfollow' : 'Follow',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.thumb_up),
//                   iconSize: 30,
//                   onPressed: () {
//                     setState(() {
//                       score++;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter LAB - 04"),
//           backgroundColor: Colors.purpleAccent,
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.all(20),
//                   child: CircleAvatar(
//                     radius: 60,
//                     backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
//                   ),
//                 ),
//                 Text(
//                   'Eman Babar',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   'Mobile Developer',
//                   style: TextStyle(fontSize: 18, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Sized Box Spacing Example"),
//         ),
//         body: Column(
//           children: [
//             Container(
//               height: 80,
//               width: double.infinity,
//               alignment: Alignment.center,
//               color: Colors.blue,
//               child: const Center(child: Text("Header")),
//             ),
//             const SizedBox(height:20),
//             Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     height:120,
//                     color: Colors.orange,
//                     child: const Center(child: Text("Container 1")),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     height: 120,
//                     color: Colors.green,
//                     child: const Center(child: Text("Container 2")),
//                   ),
//                 ),
//               ],),
//           ],
//         ),
//       ),
//     );
//   }
// }
          //   Expanded(
          //     child: Row(
          //       children: [
          //         Expanded(
          //           flex: 2,
          //           child: Container(
          //             color: Colors.orange,
          //             child: const Center(
          //               child: Text(
          //                 "Container 1(2 parts)",
          //                 style: TextStyle(fontSize: 18),
          //               ),
          //             ),
          //           ),
          //         ),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.green,
          //             child: const Center(
          //               child: Text(
          //                 "Container 2(1 part)",
          //                 style: TextStyle(fontSize: 18),
          //               )
          //             )
          //           )
          //         )
          //       ],
          //     ),)
          // ]
//         ),
//               ),
//           );
//   }
// }
        // body: SafeArea(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(
        //         margin: EdgeInsets.all(20),
        //         child: CircleAvatar(
        //           radius:  50,
        //           backgroundImage: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330",),
        //         ),
        //       ),
        //       Text(
        //         "Eman Babar",
        //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //       ),
        //       Text(
        //         "Flutter Developer",
        //         style: TextStyle(fontSize: 16, color: Colors.grey),
        //       ),
        //     ]
        //     ),
        //   ),


