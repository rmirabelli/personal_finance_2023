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
        _transactions.isEmpty
            ? Column(
                children: [
                  Text('no transactions'),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 450,
                    width: 450,
                    child: Image.asset(
                      'assets/empty.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              )
            : TransactionList(_transactions),
      ],
    );
  }
}
