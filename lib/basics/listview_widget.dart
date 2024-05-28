import 'package:flutter/material.dart';

class ListView_Widget extends StatelessWidget {
  const ListView_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // ListView has predefined scroll
        scrollDirection:
            Axis.horizontal, // by default ListView has vertical scroll
        // reverse: true,
        children: [
          Container(
            // height: 200, // height not required when scrollDirection: Axis.horizontal
            width: 300, // width not required when scrollDirection: Axis.vertical
            color: Colors.orange,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.orange,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
