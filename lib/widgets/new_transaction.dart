import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function accept;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.accept);
  @override
  Widget build(BuildContext context) {
    return Card(
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
                        amountInput = v alue;
                      }*/
            ),
            TextButton(
              child: Text('Ajouter une transaction'),
              onPressed: () {
                accept(
                    titleController.text, double.parse(amountController.text));
              },
            ),
          ],
        ),
      ),
    );
  }
}
