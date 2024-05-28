import 'package:flutter/material.dart';

class ConstrainedBox_Widget extends StatelessWidget {
  const ConstrainedBox_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 50,
          minWidth: 50,
          maxWidth: 100,
          maxHeight: 100
        ),
      child: Text("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
      overflow: TextOverflow.fade,),
    );
  }
}
