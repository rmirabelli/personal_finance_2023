import 'package:flutter/material.dart';
import 'transaction.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('personal finance'),
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
            Card(
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
                          '\$' + (transaction.amountInPennies / 100.0).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(transaction.title),
                          Text(
                            transaction.date.toString(),
                          ),
                        ],
                      )
                    ],
                  ));
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
