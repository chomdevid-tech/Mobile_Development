import 'package:flutter/material.dart';

import 'ui/screens/temperature_screen.dart';
import 'ui/screens/welcome_screen.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool isStarted = false;
 
  void startConverter() {
    setState(() {
      isStarted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff16C062), Color(0xff00BCDC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: isStarted
              ? TemperatureScreen()
              : WelcomeScreen(onStart: startConverter),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
