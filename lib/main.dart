import 'package:flutter/material.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              color: Colors.amber,
              child: Container(
                width: double.infinity,
                child: Text('CHART!'),
              ),
              elevation: 5,
            ),
            Card(
              color: Colors.red,
              child: Text('LIST OF TX!'),
            )
          ]),
    );
  }
}
