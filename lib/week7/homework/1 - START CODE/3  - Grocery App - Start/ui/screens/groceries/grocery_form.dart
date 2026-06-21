// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button

import 'package:flutter/material.dart';

import '../../../data/mock_grocery_data.dart';
import '../../../models/grocery.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key});

  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {
  final nameController = TextEditingController();
  final quantityController = TextEditingController();

  void addItem() {
    final name = nameController.text;
    final quatity = int.tryParse(quantityController.text);
    if (name.isEmpty || quatity == null) {
      return;
    }
    final newItem = GroceryItem(
      id: DateTime.now().toString(),
      name: name,
      quantity: quatity,
      category: allGroceryItems[0].category,
    );

    Navigator.pop(context, newItem);
  }

  void cancel() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: cancel, icon: Icon(Icons.arrow_back)),
              Text(
                "Add new Item",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20),

          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: "Name"),
          ),
          TextField(
            controller: quantityController,
            decoration: InputDecoration(labelText: "Quantity"),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: cancel, child: Text("Reset")),
              SizedBox(width: 10),
              ElevatedButton(onPressed: addItem, child: Text("Add item")),
            ],
          ),
        ],
      ),
    );
  }
}
