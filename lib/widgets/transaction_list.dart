import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  static List<Transaction> transactions = [
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
    return Card(
      child: Column(
        children: transactions.map((transaction) {
          return Card(
              child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    )),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                child: Text(
                  '\$${transaction.amountInPennies / 100.0}'.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Text(
                    DateFormat.MEd().format(transaction.date),
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ));
        }).toList(),
      ),
    );
  }
}
