import 'package:flutter/material.dart';

class PageView_Widget extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (value) {
          print("changed: $value");
        },
        // scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.purple,
          ),
        ],
      )
    );
  }
}
