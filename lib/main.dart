import 'package:flutter/material.dart';
import 'widgets/user_transaction.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

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
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
