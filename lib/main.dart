<<<<<<< HEAD

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

=======
//EX-1

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             'Hello my name is Devid',
//             style: TextStyle(color: Colors.pinkAccent, fontSize: 50),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//EX-2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: SizedBox(
//             width: 900,
//             height: 1000,
//             child: Scaffold(
//               body: Container(
//                 margin: EdgeInsets.all(50),
//                 padding: EdgeInsets.all(50),
//                 color: Colors.pink,
//                 child: Container(
//                   decoration: BoxDecoration(color: Colors.red),
//                   child: Center(
//                     child: Text(
//                       "CADT STUDENT",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

//EX-3

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Container(
//           color: Color.from(alpha: 255, red: 222, green: 222, blue: 222),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.lightBlue,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                 child: Center(
//                   child: Text(
//                     "OOP",
//                     style: TextStyle(
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 6, 101, 145),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                 child: Center(
//                   child: Text(
//                     "DART",
//                     style: TextStyle(
//                       color: const Color.fromARGB(255, 224, 224, 224),
//                     ),
//                   ),
//                 ),
//               ),

//               Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 1, 35, 51),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                 child: Center(
//                   child: Text(
//                     "FLUTTER",
//                     style: TextStyle(
//                       color: const Color.fromARGB(255, 224, 224, 224),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

//EX-4

// import 'package:flutter/material.dart';

>>>>>>> eb21a8821ee99ad8fc84f5fc8cf8c861505f3f3d
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
<<<<<<< HEAD
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
=======
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: const Color.fromARGB(255, 137, 26, 228),
//           title: const Text(
//             "WELCOMEEE!!",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // Black header box
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 15,
//                   horizontal: 20,
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Text(
//                   "MY HOBBIES",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 24),

//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 15,
//                         vertical: 20,
//                       ),
//                       height: 170,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 214, 133, 214),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: const Center(
//                         // Center the text inside the box
//                         child: Text(
//                           "SOCCER",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(width: 15),
//                   Expanded(
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 15,
//                         vertical: 20,
//                       ),
//                       height: 170,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(219, 183, 63, 183),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "FLUTTER",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 15),
//                   Expanded(
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 15,
//                         vertical: 20,
//                       ),
//                       height: 170,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(219, 157, 21, 157),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "READING",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(width: 15),
//                   Expanded(
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 15,
//                         vertical: 20,
//                       ),
//                       height: 170,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(219, 115, 10, 115),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "HACKING",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         bottomNavigationBar: Container(
//           height: 70,
//           color: Colors.purple,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white,
//                 ),
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white,
//                 ),
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white,
//                 ),
>>>>>>> eb21a8821ee99ad8fc84f5fc8cf8c861505f3f3d
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
<<<<<<< HEAD
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


=======
// }
>>>>>>> eb21a8821ee99ad8fc84f5fc8cf8c861505f3f3d
