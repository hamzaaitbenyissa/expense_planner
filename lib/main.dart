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
              title: const Text('Expense Planner'),
            ),
            body: SingleChildScrollView(child: UserTransactions())));
  }
}
