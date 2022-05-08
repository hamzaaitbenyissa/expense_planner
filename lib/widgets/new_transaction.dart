import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  final Function AddNewTransaction;
  NewTransaction(this.AddNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
                // onChanged: (value) => {this.title = value},
              ),
              TextField(
                controller: amountcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Amount',
                ),
                // onChanged: (value) => {this.amount = value},
              ),
              FlatButton(
                  child: TextButton(
                onPressed: () => {
                  AddNewTransaction(
                      titlecontroller.text, double.parse(amountcontroller.text))
                },
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
        ));
  }
}
