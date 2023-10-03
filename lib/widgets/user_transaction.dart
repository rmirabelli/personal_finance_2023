import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  void _addNewTransaction(String title, int amount) {
    final newTransaction = Transaction(
      title: title,
      amountInPennies: amount,
      id: UniqueKey().toString(),
    );
    setState(() {
      transactions.add(newTransaction);
    });
  }

  final List<Transaction> transactions = [
    Transaction(
      id: UniqueKey().toString(),
      title: 'new shoes',
      amountInPennies: 3299,
    ),
    Transaction(
      id: UniqueKey().toString(),
      title: 'groceries',
      amountInPennies: 12332,
    ),
    Transaction(
      id: UniqueKey().toString(),
      title: 'coffee',
      amountInPennies: 4275,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(transactions),
      ],
    );
  }
}
