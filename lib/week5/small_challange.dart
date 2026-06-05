import 'dart:math';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  final Random random = Random();

  String currentDice = "assets/dice-1.png";

  void onTap() {
    setState(() {
      int diceNumber = random.nextInt(6) + 1;
      currentDice = "assets/dice-$diceNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 141, 21, 141),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(currentDice, height: 300),
            const SizedBox(height: 20),
            TextButton(
              onPressed: onTap,
              child: const Text(
                "Touch Me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: Scaffold(body: Dice())));
}
