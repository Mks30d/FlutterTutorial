import 'package:flutter/material.dart';

class ListWheelScrollView_Widget extends StatelessWidget {
  ListWheelScrollView_Widget ({super.key});

  var arr = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(itemExtent: 100,
        children: arr.map( (value) {
            return  Container(
              height: 100,
              width: 300,
              color: Colors.blue,
              child: Center(child: Text("$value")),
            );
          }
          ).toList()
    );
  }
}
