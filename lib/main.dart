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

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
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
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }