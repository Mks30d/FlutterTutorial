import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TweenAnimation_Widget extends StatefulWidget {
  const TweenAnimation_Widget({super.key});

  @override
  State<TweenAnimation_Widget> createState() => _TweenAnimation_WidgetState();
}

class _TweenAnimation_WidgetState extends State<TweenAnimation_Widget> {

  var textOpacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        TweenAnimationBuilder(
          duration: Duration(seconds: 3),
          tween: Tween<double>(begin: 0, end: 100),
          builder: (context, value, child) {
            print(value);
            return Container(
              width: 100,
              height: 100-value,
              color: Colors.blue,
            );
          },

          onEnd: () {
            setState(() {
              textOpacity = 1;
            });
          },
        ),


        AnimatedOpacity(
          duration: Duration(seconds: 1),
            opacity: textOpacity,
            child: Text("Tween Animation")
        ),


        TweenAnimationBuilder(
          tween: Tween<double> (begin: 0, end: 100),
          duration: Duration(seconds: 3),
          builder: (context, value, child) {
            return Container(
              width: value,
              height: value,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100)
              ),
            );
          },
        ),



      ],
    );
  }
}
