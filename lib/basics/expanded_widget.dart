import 'package:flutter/material.dart';

class Expanded_Widget extends StatelessWidget {
  const Expanded_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 30,
              color: Colors.blue,
            ),
            // The Expanded widget in Flutter is used within a Row, Column, or Flex to expand a child widget to fill the available space along the main axis of the parent widget. It's commonly used to control the layout and distribution of child widgets within a flex container.
            Expanded(
              child: Container(
                height: 100,
                width: 30,
                color: Colors.green,
              ),
            ),
            Container(
              height: 100,
              width: 30,
              color: Colors.blue,
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 100,
              width: 30,
              color: Colors.purple,
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 30,
                color: Colors.red,
              ),
            ),
            Container(
              height: 100,
              width: 30,
              color: Colors.purple,
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: 100,
                width: 30,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                width: 30,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                width: 30,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 30,
                color: Colors.purple,
              ),
            ),
          ],
        ),
        Container(
          height: 100,
          width: 30,
          color: Colors.orange,
        ),
      ],
    ));
  }
}
