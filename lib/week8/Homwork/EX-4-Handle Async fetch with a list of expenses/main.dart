import 'package:flutter/material.dart';

import 'ui/expenses/expenses_screen.dart';
import 'repository/expense_repository.dart';
import 'models/expense.dart';

void main() async {


  Expense expense = await expenseRepository.fetchExpense();

  print('${expense.title} - \$${expense.amount}');

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpensesScreen(),
    ),
  );
}
