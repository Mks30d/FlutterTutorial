import 'package:flutter/material.dart';

class HeroAnimation_1 extends StatefulWidget {
  const HeroAnimation_1({super.key});

  @override
  State<HeroAnimation_1> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: 'newscreen',
          child: Container(
            color: Colors.blue,
            height: 200,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
