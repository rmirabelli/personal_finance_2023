import 'package:flutter/material.dart';

import '../models/transaction.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.performAction, {super.key});
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function(String, int) performAction;

  void _submitTransaction() {
    final enteredTitle = titleController.text;
    final enteredAmount = (double.parse(amountController.text) * 100).toInt();

    if (enteredTitle.isEmpty || enteredAmount < 0) return;

    performAction(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              onSubmitted: (_) => _submitTransaction(),
              controller: titleController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: 'title'),
            ),
            TextField(
              onSubmitted: (_) => _submitTransaction(),
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'amount'),
            ),
            TextButton(
              child: Text('add xaction'),
              onPressed: _submitTransaction,
            ),
          ],
        ),
      ),
    );
  }
}
