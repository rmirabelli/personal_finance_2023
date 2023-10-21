import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList(this.transactions);
  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (ctx, index) {
            Transaction transaction = transactions[index];
            return Card(
                child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: FittedBox(
                  child: Padding(padding: EdgeInsets.all(3), child: Text('\$${transaction.amountInPennies / 100}')),
                ),
              ),
              title: Text(
                '${transaction.title}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text('${transaction.date.toString()}'),
            ));
          }),
    );
  }
}
