
//Ex1

// import 'package:flutter/material.dart';

// class Button extends StatelessWidget {
//   final IconData icon;
//   final String text;
//   final Color color;

//   const Button({
//     super.key,
//     required this.icon,
//     required this.text,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.black),
//           const SizedBox(width: 20),
//           Text(
//             text,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 144, 124, 124),
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text(
//             "MY HOBBIES!",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         body: const Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               Button(
//                 icon: Icons.travel_explore,
//                 text: "TRAVELLING",
//                 color: Colors.green,
//               ),
//               SizedBox(height: 20),

//               Button(
//                 icon: Icons.skateboarding,
//                 text: "SKATING",
//                 color: Colors.blue,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//EX2

// import 'package:flutter/material.dart';

// enum IconPosition { left, right }

// class CustomButton extends StatelessWidget {
//   final IconData icon;
//   final String text;
//   final Color color;
//   final IconPosition iconPosition; // New parameter

//   const CustomButton({
//     super.key,
//     required this.icon,
//     required this.text,
//     required this.color,
//     this.iconPosition = IconPosition.left,
//   });

//   @override
//   Widget build(BuildContext context) {

//     List<Widget> children = [
//       Icon(icon, color: Colors.white),
//       const SizedBox(width: 20),
//       Text(
//         text,
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 15,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ];

//     if (iconPosition == IconPosition.right) {
//       children = children.reversed.toList();
//     }

//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: children,
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black12,
//         appBar: AppBar(
//           title: const Text(
//             "MY HOBBIES!",
//             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             children: [
//               const CustomButton(
//                 icon: Icons.check,
//                 text: "Submit",
//                 color: Colors.blue,
//               ),
//               const SizedBox(height: 20),
//               const CustomButton(
//                 icon: Icons.access_alarm_outlined,
//                 text: "Time",
//                 color: Color.fromARGB(255, 13, 105, 40),
//                 iconPosition:
//                     IconPosition.right, // Icon will now be on the right
//               ),
//               const SizedBox(height: 20),
//               const CustomButton(
//                 icon: Icons.account_box,
//                 text: "Account",
//                 color: Color.fromARGB(255, 52, 59, 54),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//EX3

// import 'package:flutter/material.dart';

// class CardCustom extends StatelessWidget {
//   final String imagePath; // Using a string path is more common
//   final String title;
//   final String description;

//   const CardCustom({
//     super.key,
//     required this.imagePath,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(15),
//       child: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(imagePath, height: 50),
//             SizedBox(height: 10),
//             Text(
//               title,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ), Text(description)
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         appBar: AppBar(title: const Text("Products")),
//         body: ListView(
//           children: const [
//             CardCustom(
//               imagePath: 'assets/ex3/dart.png',
//               title: "Dart",
//               description: "the best object language",
//             ),
//             CardCustom(
//               imagePath: 'assets/ex3/firebase.png',
//               title: "Dart",
//               description: "the best object language",
//             ),
//             CardCustom(
//               imagePath: 'assets/ex3/flutter.png',
//               title: "Dart",
//               description: "the best object language",
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }


