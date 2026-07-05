import 'package:all_week/week9/homework/1%20-%20START%20CODE/1%20-%20BUTTON/model/model.dart';

import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final ButtonData data;
  final VoidCallback onPressed;
  const MyButton({super.key, required this.data, required this.onPressed});

  Color backgroundColors() {
    if (data.selected) {
      return Colors.blue;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 80,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColors()),
          child: Text(data.name, style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
