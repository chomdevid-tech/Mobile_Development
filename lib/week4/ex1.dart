// // Ex1

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const Button({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 20),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 144, 124, 124),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "MY HOBBIES!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Button(
                icon: Icons.travel_explore,
                text: "TRAVELLING",
                color: Colors.green,
              ),
              SizedBox(height: 20),

              Button(
                icon: Icons.skateboarding,
                text: "SKATING",
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
