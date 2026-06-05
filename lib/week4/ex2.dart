//EX2

import 'package:flutter/material.dart';

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final IconPosition iconPosition;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    this.iconPosition = IconPosition.left,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      Icon(icon, color: Colors.white),
      const SizedBox(width: 20),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    ];
    if (iconPosition == IconPosition.right) {
      children = children.reversed.toList();
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text(
            "MY HOBBIES!",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const CustomButton(
                icon: Icons.check,
                text: "Submit",
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const CustomButton(
                icon: Icons.access_alarm_outlined,
                text: "Time",
                color: Color.fromARGB(255, 13, 105, 40),
                iconPosition: IconPosition.right,
              ),
              const SizedBox(height: 20),
              const CustomButton(
                icon: Icons.account_box,
                text: "Account",
                color: Color.fromARGB(255, 52, 59, 54),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
