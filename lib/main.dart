import 'package:expense_planner/entities/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Planner',
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(
        id: "T1", title: "WIFI FEE", amount: 20.5, date: DateTime.now()),
    Transaction(
        id: "T2", title: "Sport Club", amount: 40, date: DateTime.now()),
    Transaction(id: "T3", title: "Foods", amount: 200.5, date: DateTime.now()),
    Transaction(
        id: "T4", title: "T-shirts", amount: 200.5, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expense Planner'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment : CrossAxisAlignment.end,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Title',
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Amount',
                          ),
                        ),
                        FlatButton(
                            child: TextButton(
                          onPressed: () => {},
                          child: Text(
                            "Add Transaction",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ))
                      ],
                    ),
                  )),
              Column(
                  children: transactions.map((tx) {
                return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(6),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tx.title,
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(DateFormat.yMMMEd().format(tx.date),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepOrange, width: 0),
                                ),
                                child: Text(
                                  tx.amount.toString() + " \$",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                          ]),
                      elevation: 10,
                    ));
              }).toList()),
            ]));
  }
}
