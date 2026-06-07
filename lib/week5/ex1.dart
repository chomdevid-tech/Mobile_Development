import 'package:flutter/material.dart';

class SelectButton extends StatefulWidget {
  const SelectButton({super.key});

  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool selected = false;

  String get buttonText {
    if (selected) {
      return "Selected";
    } else {
      return "Not Selected";
    }
  }

  Color get textColor {
    if (selected) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  Color get backgorund {
    if (selected) {
      return Colors.blue;
    } else {
      return Colors.blueGrey;
    }
  }
  void togglebutton(){
    setState(() {
      selected = !selected;
    });
  }
@override
Widget build(BuildContext context) {
  return ElevatedButton(onPressed: togglebutton, style: ElevatedButton.styleFrom(backgroundColor: backgorund),
  child: Center(child: Text(buttonText, style: TextStyle(color: textColor, fontSize: 20),),),);
}

}
void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [SizedBox(height: 100, width: 400, child:SelectButton(),),
        SizedBox(height: 10,),
        SizedBox(height: 100, width: 400, child: SelectButton(),)],
        )
      ),
    ),
  ),
);

