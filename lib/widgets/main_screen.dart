import 'package:flutter/material.dart';
import 'new_transaction.dart';
import 'user_transaction.dart';
import '../models/transaction.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this._addNewTransaction, this._transactions, {super.key});

  final Function(String, int) _addNewTransaction;
  final List<Transaction> _transactions;

  void _startNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return NewTransaction(_addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('personal finance'),
        actions: [
          IconButton(
            onPressed: () {
              _startNewTransaction(context);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _startNewTransaction(context);
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              elevation: 5.0,
              child: Text('Chart'),
            ),
          ),
          UserTransaction(
            _addNewTransaction,
            _transactions,
          ),
        ],
      ),
    );
  }
}
