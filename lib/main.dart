import 'package:flutter/material.dart';

import 'widgets/transaction_list.dart';

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
  //late String titleInput;
  //late String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organize'),
      ),
      body: Column(
          /*mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, //un peu comme un flex
          */
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
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                      /*onChanged: (value) {
                        titleInput = value;
                      },*/
                    ),
                    TextField(
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(labelText: ''),
                      controller: amountController,
                      /* onChanged: (value) {
                        amountInput = value;
                      }*/
                    ),
                    TextButton(
                      child: Text('Ajouter une transaction'),
                      onPressed: () {
                        print(titleController.text);
                        print(amountController.text);
                      },
                    ),
                  ],
                ),
              ),
            ),
            TransactionList()
          ]),
    );
  }
}
