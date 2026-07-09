import 'package:flutter/material.dart';

import '../../../models/todo.dart';
import '../../theme/app_screen.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key, required this.todo, required this.onTap});

  final Todo todo;
  final ValueChanged<Todo> onTap;

  TextDecoration? get textDecoration {
    if (todo.completed) {
      return TextDecoration.lineThrough;
    } else {
      return TextDecoration.none;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => onTap(todo),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 252, 252, 252),
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.all(width: 2, color: AppTheme.yellowColor),
          ),

          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                CheckBox(checked: todo.completed),
                SizedBox(width: 10),
                Text(
                  todo.title,
                  style: AppTheme.paragraph.copyWith(
                    decoration: textDecoration,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CheckBox extends StatelessWidget {
  const CheckBox({super.key, required this.checked});

  final bool checked;


  BoxBorder? get border {
    if (checked) {
      return Border.all(width: 2, color: AppTheme.yellowColor);
    } else {
      return Border.all(width: 2, color: AppTheme.yellowColor);
    }
  }

  Color? get backbroundColor {
    if (checked) {
      return Colors.green;
    } else {
      return const Color.fromARGB(255, 255, 255, 255);
    }
  }

  Widget? get innerIcon {
    if (checked) {
      return Icon(Icons.check, color: const Color.fromARGB(255, 255, 255, 255));
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: border,
        color: backbroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: innerIcon,
    );
  }
}

