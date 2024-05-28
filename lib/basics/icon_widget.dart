import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Icon_Widget extends StatelessWidget {
  const Icon_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Icon(
            Icons.play_arrow,
            size: 50,
            color: Colors.red,
          ),

          FaIcon(FontAwesomeIcons.calendar),
        ],
      ),
    );
  }
}
