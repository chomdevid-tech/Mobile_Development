import 'package:flutter/material.dart';

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool isFavorite = false;

  IconData get icondata {
    if (isFavorite) {
      return Icons.favorite;
    } else {
      return Icons.favorite_border;
    }
  }

  Color get colors {
    if (isFavorite) {
      return Colors.red;
    } else {
      return const Color.fromARGB(255, 175, 163, 163);
    }
  }

  void togglebutton() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

@override
Widget build(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.grey)),
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "title",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text("description"),
            ],
          ),
          IconButton(
            onPressed: togglebutton,
            icon: Icon(icondata, color: colors),
          ),
        ],
      ),
    );
  }
}

  void main() => runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),

        body: Column(
          children: [SelectButton(), SelectButton(), SelectButton()],

        ),
      ),
    ),
  );

