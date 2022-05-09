import 'package:expense_planner/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Expense Planner',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text(
                'Expense Planner',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(child: UserTransactions())));
  }
}
