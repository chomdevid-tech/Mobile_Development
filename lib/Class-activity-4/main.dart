import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 50),
            Container(height: 300, color: Colors.blue),

            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.green)),
                  Container(width: 100, color: Colors.pink),
                ],
              ),
            ),

            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.orange)),
                  SizedBox(width: 20),
                  Expanded(child: Container(color: Colors.orange)),
                  SizedBox(width: 20),
                  Expanded(child: Container(color: Colors.orange)),
                ],
              ),
            ),

            SizedBox(height: 20),

            Expanded(child: Container(color: Colors.pink)),
          ],
        ),
      ),
    ),
  );
}
