import 'package:flutter/material.dart';

class Wrap_Widget extends StatelessWidget {
  const Wrap_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // to take full width
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          spacing: 11, // horizontal spacing b/w widgets
          runSpacing: 11, //vertical spacing b/w widgets

          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.pink,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.pink,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.pink,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),

          ],
        ),
      ),
    );
  }
}
