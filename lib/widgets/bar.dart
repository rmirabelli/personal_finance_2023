import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar(this.label, {super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text('$label');
  }
}
