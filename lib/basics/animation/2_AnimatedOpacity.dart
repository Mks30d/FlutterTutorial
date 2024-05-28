import 'package:flutter/material.dart';

class AnimatedOpacity_2 extends StatefulWidget {
  const AnimatedOpacity_2({super.key});

  @override
  State<AnimatedOpacity_2> createState() => _AnimatedOpacity_2State();
}

class _AnimatedOpacity_2State extends State<AnimatedOpacity_2> {
  var myOpacity = 1.0;
  bool isVisible = true;
  var btnName = "Hide";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AnimatedOpacity(
            opacity: myOpacity,
            duration: Duration(seconds: 1),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),

          ElevatedButton(onPressed: () {
            setState(() {
              if(isVisible) {
                myOpacity = 0;
                isVisible = false;
                btnName = "Unhide";
              } else {
                myOpacity = 1;
                isVisible = true;
                btnName = "Hide";
              }
            });
          }, child: Text("$btnName"))
        ],
      ),

    );
  }
}
