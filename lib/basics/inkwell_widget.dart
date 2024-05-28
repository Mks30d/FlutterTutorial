import 'package:flutter/material.dart';

class InkWell_Widget extends StatelessWidget {
  const InkWell_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //The InkWell widget in Flutter is used to make interactive elements respond to touch gestures
      body: InkWell(
        onTap: () {
          print("Container Tapped");
        },
        onLongPress: () {
          print("Container Long press");
        },
        child: Container(
          width: 100,
          height: 100,
          color: Colors.orange,
          child: Center(
            child: InkWell(
              onTap: () {
                print("Text tapped");
              },
              child: Text("Text"),
              // child: Image.asset("assets/images/dart.png"),
            ),
          ),
        ),
      ),
    );
  }
}
