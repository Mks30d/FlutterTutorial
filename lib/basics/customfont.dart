import 'package:flutter/material.dart';

class CustomFont_Widget extends StatelessWidget {
  const CustomFont_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello...", style: TextStyle(fontFamily: 'MyFont'),),
    );
  }
}
