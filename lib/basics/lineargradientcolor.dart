import 'package:flutter/material.dart';

class LinearGradientColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors: [
              Color(0xff6f89f1),
              Color(0xff764ba2)
            ],
            begin: FractionalOffset(0, 1),
            end:  FractionalOffset(1,0),
          ),

          // gradient:RadialGradient(
          //   colors: [
          //     Color(0xff667eea),
          //     Color(0xff764ba2)
          //   ],
          // ),
        ),
        child: Text("Linear Gradient"),
      ),
    );
  }

}