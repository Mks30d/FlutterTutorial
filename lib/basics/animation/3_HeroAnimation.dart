import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/animation/3_HeroAnimation_1.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) {
              return HeroAnimation_1();  // second screen to navigate
              },),
            );
          },
          // wrapped Hero with InkWell to make it clickable
          child: Hero(
            tag: "newscreen", // same in first screen and second screen to link second screen with first
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
