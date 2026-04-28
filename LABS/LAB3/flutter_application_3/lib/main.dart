import 'package:flutter/material.dart';
//LAB3
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("User Profile"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('assets/profile.jpg'),
                child: Text("EB", style: TextStyle(color: Colors.white)),
              ),
            )
          ],
        ),
        body: Center(
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            child: Text(
              "EB",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Card Example")),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               //First Card
//               Card(
//                 elevation: 8,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: ListTile(
//                   leading: CircleAvatar(
//                     backgroundColor: Colors.blue,
//                     child: Icon(Icons.person, color: Colors.white),
//                   ),
//                   title: Text(
//                     "Eman Babar",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Text("Registration No: 1148"),
//                 ),
//               ),
//               SizedBox(height: 20),
//               //Second Card (Variation)
//               Card(
//                 color: Colors.purple.shade50,
//                 elevation: 12,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//                 child: ListTile(
//                   leading: Icon(
//                     Icons.account_circle,
//                     size: 40,
//                     color: Colors.purple,
//                   ),
//                   title: Text(
//                     "Akasha Fatima",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.purple,
//                     ),
//                   ),
//                   subtitle: Text(
//                     "Registration No: 1132",
//                     style: TextStyle(color: Colors.grey[700]),
//                   ),
//                   trailing: Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.purple,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//         body: Center(
//           child: Container(
//             color: Colors.blueAccent,padding: EdgeInsets.all(20),
//             margin: EdgeInsets.symmetric(
//               vertical: 50,horizontal: 10,
//             ),
//             child: Container(
//               margin: EdgeInsets.only(left:10),
//               color: Colors.white,
//               child: Text(
//                 "Flutter Container Example",
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//           ),
//         ),
//               ),
//     );
//   }
// }
        // body: Padding(
        //   padding: const EdgeInsets.all(16.0),
        //   child: Column(
        //     children: [
        //       // -------- Card 1 --------
        //       Card(
        //         color: Colors.blue.shade100,
        //         elevation: 4,
        //         child: Padding(
        //           padding: const EdgeInsets.all(16.0),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               Icon(Icons.favorite, color: Colors.red, size: 30),
        //               Icon(Icons.thumb_up, color: Colors.green, size: 40),
        //               Icon(Icons.share, color: Colors.purple, size: 35),
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 20),
        //       // -------- Card 2 --------
        //       Card(
        //         color: Colors.orange.shade100,
        //         elevation: 8,
        //         child: Padding(
        //           padding: const EdgeInsets.all(16.0),
        //           child: Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Icon(Icons.home, color: Colors.blue, size: 50),
        //               SizedBox(height: 10),
        //               Icon(Icons.settings, color: Colors.black, size: 35),
        //               SizedBox(height: 10),
        //               Icon(Icons.person, color: Colors.teal, size: 45),
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 20),
        //       // -------- Card 3 --------
        //       Card(
        //         color: Colors.green.shade100,
        //         elevation: 12,
        //         child: Padding(
        //           padding: const EdgeInsets.all(16.0),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceAround,
        //             children: [
        //               Icon(Icons.star, color: Colors.amber, size: 40),
        //               Icon(Icons.notifications, color: Colors.redAccent, size: 30),
        //               Icon(Icons.camera_alt, color: Colors.indigo, size: 50),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
