import 'package:flutter/material.dart';

class Card_Widget extends StatelessWidget {
  const Card_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 11,
        shadowColor: Colors.black, // for shadow color
        shape: RoundedRectangleBorder(  // adding border
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Colors.black, width: 2), // Border color and width
        ),
        child: Text(
          "Card Widget",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
