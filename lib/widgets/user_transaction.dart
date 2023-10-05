import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatelessWidget {
  const UserTransaction(this._addNewTransaction, this._transactions, {super.key});
  final Function(String, int) _addNewTransaction;
  final List<Transaction> _transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // NewTransaction(_addNewTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
