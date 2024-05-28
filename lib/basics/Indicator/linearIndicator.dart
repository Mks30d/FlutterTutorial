import 'package:flutter/material.dart';

class LinearIndicator extends StatefulWidget {
  const LinearIndicator({super.key});

  @override
  State<LinearIndicator> createState() => _LinearIndicatorState();
}

class _LinearIndicatorState extends State<LinearIndicator> {
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: Colors.green,
      minHeight: 10,
      value: 75,
      backgroundColor: Colors.grey[300],
      borderRadius: BorderRadius.circular(11),
    );
  }
}
