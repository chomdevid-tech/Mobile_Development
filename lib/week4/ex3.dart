// EX3

import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String imagePath; // Using a string path is more common
  final String title;
  final String description;

  const CardCustom({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 50),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(description),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: const Text("Products")),
        body: ListView(
          children: const [
            CardCustom(
              imagePath: 'assets/ex3/dart.png',
              title: "Dart",
              description: "the best object language",
            ),
            CardCustom(
              imagePath: 'assets/ex3/firebase.png',
              title: "Dart",
              description: "the best object language",
            ),
            CardCustom(
              imagePath: 'assets/ex3/flutter.png',
              title: "Dart",
              description: "the best object language",
            ),
          ],
        ),
      ),
    ),
  );
}
