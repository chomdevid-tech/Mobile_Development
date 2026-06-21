import '../../../models/grocery.dart';
import 'package:flutter/material.dart';
import '../../../data/mock_grocery_data.dart';
import 'grocery_tile.dart';
import 'grocery_form.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  final List<GroceryItem> groceryItems = List.from(allGroceryItems);
  void onCreate() async {
    final newItem = await showModalBottomSheet<GroceryItem>(
      context: context,
      builder: (context) {
        return const GroceryForm();
      },
    );
    if (newItem == null) {
      return;
    }

    setState(() {
      groceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Text('No items added yet.'));

    if (groceryItems.isNotEmpty) {
      content = ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];

          return GroceryTile(grocery: item);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [IconButton(onPressed: onCreate, icon: const Icon(Icons.add))],
      ),
      body: content,
    );
  }
}
