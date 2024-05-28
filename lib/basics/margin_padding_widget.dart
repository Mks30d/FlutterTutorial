import 'package:flutter/material.dart';

class MarginPadding_Widget extends StatelessWidget {
  const MarginPadding_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Container(
                color: Colors.green,
                margin: EdgeInsets.only(left: 20, top: 50), // outside
                // margin: EdgeInsets.all(10),
                child: Text("Margin, outside"),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.purple,
              child: Padding(
                // padding: const EdgeInsets.all(20.0),
                padding: EdgeInsets.only(left: 20, top: 50),
                child: Text("Padding, inside"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.teal,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10),
              child: Text("Child"),
            ),
          ],
        ),
      ],
    ));
  }
}
