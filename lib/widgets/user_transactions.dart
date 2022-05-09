import 'package:expense_planner/entities/transaction.dart';
import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:expense_planner/widgets/transactions_list.dart';
import 'package:flutter/cupertino.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(
        id: "T1", title: "WIFI FEE", amount: 20.5, date: DateTime.now()),
    Transaction(
        id: "T2", title: "Sport Club", amount: 40, date: DateTime.now()),
    Transaction(
        id: "T4", title: "Transport", amount: 30.54, date: DateTime.now()),
    Transaction(
        id: "T5", title: "Clothing", amount: 30.02, date: DateTime.now()),
    Transaction(id: "T6", title: "Home", amount: 100.5, date: DateTime.now()),
    Transaction(id: "T7", title: "Education", amount: 150.5, date: DateTime.now()),
  ];

//  (_) means , it's private to its library
  void _AddNewTransaction(String title, double amount) {
    final NewTx = new Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _transactions.add(NewTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NewTransaction(_AddNewTransaction),
          TransactionsList(_transactions)
        ]);
  }
}
