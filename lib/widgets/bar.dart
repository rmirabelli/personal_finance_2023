import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar(this.label, this.dailyAmount, this.grandTotal, {super.key});
  final String label;
  final double dailyAmount;
  final double grandTotal;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Column(
        children: [
          Text('$label'),
          SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 60,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
                ),
                Container(color: Colors.black),
                FractionallySizedBox(
                    heightFactor: grandTotal == 0.0 ? 0 : dailyAmount / grandTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text('$dailyAmount'),
        ],
      ),
    );
  }
}
