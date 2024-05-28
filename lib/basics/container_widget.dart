import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 200,
        height: 200,
        // color: Colors.red, // not allowed when using decoration
        child: Text("Container"),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    ));
  }
}
