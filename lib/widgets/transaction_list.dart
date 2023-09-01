import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'user_transaction.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        UserTransaction();
        return Card(
            child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 17),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.teal,
                width: 3,
              ),
            ),
            padding: EdgeInsets.all(14),
            child: Text(
              '\$' + tx.amount.toString(), // '\$${tx.amount}
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.teal),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                tx.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                DateFormat('yyyy-MM-dd').format(tx.date), //yyyy/MM//dd
                style: TextStyle(color: Colors.brown),
              ),
            ],
          )
        ]));
      }).toList(),
    );
  }
}
