import 'package:flutter/material.dart';
import 'widgets/user_transaction.dart';
import 'widgets/main_screen.dart';
import 'models/transaction.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  void _addNewTransaction(String title, int amount) {
    final newTransaction = Transaction(
      title: title,
      amountInPennies: amount,
      id: UniqueKey().toString(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  final List<Transaction> _transactions = [
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
      theme: ThemeData(
        primaryColor: Colors.purple.shade300,
        cardColor: Colors.amber.shade200,
        highlightColor: Colors.green,
        appBarTheme: AppBarTheme(
          color: Colors.grey,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic,
          ),
          bodyLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blueGrey,
          ),
        ),
      ),
      home: MainScreen(_addNewTransaction, _transactions),
    );
  }
}
