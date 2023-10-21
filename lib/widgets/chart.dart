import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';
import 'bar.dart';

class Chart extends StatelessWidget {
  const Chart(this._recentTransactions, {super.key});

  final List<Transaction> _recentTransactions;
  List<Map<String, Object>> get getGroupedTransactions {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      final xactions = _recentTransactions.where((element) =>
          element.date.day == weekDay.day && element.date.month == weekDay.month && element.date.year == weekDay.year);
      final int sum = xactions.fold(0, (runningTotal, element) => runningTotal + element.amountInPennies);
      return {
        'day': DateFormat.E().format(weekDay),
        'amount': sum,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    final int grandTotal =
        _recentTransactions.fold(0, (previousValue, element) => previousValue + element.amountInPennies);
    final double gt = grandTotal / 100;
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
          children:
              getGroupedTransactions.map((e) => Bar(e['day'] as String, (e['amount'] as int) / 100, gt)).toList()),
    );
  }
}
