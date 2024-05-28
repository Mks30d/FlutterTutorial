import 'package:flutter/material.dart';

class ContainerDecoration_widget extends StatelessWidget {
  const ContainerDecoration_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // if the parent container(by default it take whole screen) has no size, then it will consume to child container size
        width: double.infinity, // this will take full width of screen
        color: Colors.purple.shade100,
        child: Center(
          child: Container(
            height: 300,
            // width: double.infinity,
            width: 300,
            // When you provide a decoration, we can not set the color property separately. It will give error
            // color: Colors.purple.shade500,
            decoration: BoxDecoration(
              color: Colors.purple.shade500,
              borderRadius: BorderRadius.circular(11),
              //   borderRadius: BorderRadius.all(Radius.elliptical(100, 30))
              //   borderRadius: BorderRadius.only(topRight: Radius.circular(100), bottomLeft: Radius.circular(100))
              //   borderRadius: BorderRadius.only(topRight: Radius.circular(200), topLeft: Radius.circular(200)),
              border: Border.all(
                color: Colors.black,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.purple, blurRadius: 30, spreadRadius: 10)
              ],
              // shape: BoxShape.circle,  // we can only use  of the property borderRadius or shape property
            ),
          ),
        ),
      ),
    );
  }
}
