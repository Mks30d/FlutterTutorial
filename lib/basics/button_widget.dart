import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  // 3 types of button
  //1. TextButton
  //2. ElevatedButton
  //3. OutlinedButton

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OutlinedButton(
      child: Text("OutlincedButton"),
      onPressed: () {
        print("Oulined Button");
      },
    )

// ElevatedButton(
//   child: Text("Elevated Btn"),
//   onPressed: () {
//     print("Elevated pressed");
//   },
// )

// TextButton(
//   child: Text("Text Btn"),
//   onPressed: () {
//     print("Button Pressed");
//   },
//   onLongPress: () {
//     print("long press");
//   },
// ),
        );
  }
}
