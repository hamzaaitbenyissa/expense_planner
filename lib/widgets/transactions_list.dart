import 'package:expense_planner/entities/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class TransactionsList extends StatelessWidget {
  List<Transaction> transactions = [];

  TransactionsList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
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
                            border: Border.all(color: Colors.deepOrange, width: 0),
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
      ),
    );
  }
}
