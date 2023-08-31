import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'Harry Houses', amount: 74.33, date: DateTime.now()),
    Transaction(id: 't2', title: 'Feu', amount: 41.22, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organize'),
      ),
      body: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, //un peu comme un flex
          crossAxisAlignment:
              CrossAxisAlignment.center, //perpendiculairement à l'axe principal
          children: <Widget>[
            Card(
              color: Colors.amber,
              child: Container(
                width: double.infinity,
                child: Text('CHART!'),
              ),
              elevation: 5,
            ),
            Column(
              children: transactions.map((tx) {
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
                      Text(tx.date.toString())
                    ],
                  )
                ]));
              }).toList(),
            ),
          ]),
    );
  }
}
