import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  State<TransactionList> createState() => __TransactionListState();
}

class __TransactionListState extends State<TransactionList> { 
  @override
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'Harry Houses', amount: 74.33, date: DateTime.now()),
    Transaction(id: 't2', title: 'Feu', amount: 41.22, date: DateTime.now())
  ];

  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tx) {
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
