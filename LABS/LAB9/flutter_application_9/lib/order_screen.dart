import 'package:flutter/material.dart';
import 'confirmation_screen.dart';
//------------------Task1----------------------------------
// class OrderScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SMT Cuisine Order"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Task 1: TextField with styling
//             TextField(
//               decoration: InputDecoration(
//                 icon: Icon(Icons.person), // icon
//                 hintText: "Enter customer name", // hint text
//                 border: OutlineInputBorder(), // border
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//------------------Task2----------------------------------
// class OrderScreen extends StatefulWidget {
//   @override
//   _OrderScreenState createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   String? errorText;

//   void validateInput(String value) {
//     setState(() {
//       if (value.contains(" ")) {
//         errorText = "Don't use blank spaces";
//       } else {
//         errorText = null;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Task 2")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: TextFormField(
//           decoration: InputDecoration(
//             labelText: "Discount Code",
//             errorText: errorText,
//             border: OutlineInputBorder(),
//           ),
//           onChanged: validateInput,
//         ),
//       ),
//     );
//   }
// }
//------------------Task3----------------------------------
// class OrderScreen extends StatefulWidget {
//   @override
//   _OrderScreenState createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   String selectedSize = "Small";

//   List<String> pizzaSizes = [
//     "Small",
//     "Medium",
//     "Large",
//     "Party Size"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Task 3")),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: DropdownButton<String>(
//           value: selectedSize,
//           isExpanded: true,
//           items: pizzaSizes.map((size) {
//             return DropdownMenuItem(
//               value: size,
//               child: Text(size),
//             );
//           }).toList(),
//           onChanged: (value) {
//             setState(() {
//               selectedSize = value!;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
//------------------Task4----------------------------------
class OrderScreen extends StatelessWidget {
  final String name = "Eman";
  final String size = "Medium";

  void goToNext(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmationScreen(
          name: name,
          size: size,
        ),
      ),
    );

    if (result == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Order Confirmed")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task 4")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => goToNext(context),
          child: Text("Submit Order"),
        ),
      ),
    );
  }
}