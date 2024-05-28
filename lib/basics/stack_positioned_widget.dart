import 'package:flutter/material.dart';

class Stack_Positioned_Widget extends StatelessWidget {
  const Stack_Positioned_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Container(
        width: double.infinity,
        height: 400,
        color: Colors.green,
        child:
        // stack is used to overlap widgets
          Stack(
            children: [
              Positioned(  // positioned widget is mainly used with stack (and not with row/column as their container can not be rearranged)
                left: 30,
                top: 30,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              )
            ],
          ),
      ),
    );
  }
}
