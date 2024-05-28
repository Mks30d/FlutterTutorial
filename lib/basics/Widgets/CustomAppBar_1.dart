
import 'package:flutter/material.dart';

class CustomAppBar_Widget_1 extends StatelessWidget {
  const CustomAppBar_Widget_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 500,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: AppbarCustomClipper(),
          child: Container(
            height: 150,
            color: Colors.blue,
            child: Text("AppBar"),
          ),
        ),
      ),
    );
  }
}

class AppbarCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    
    // path.lineTo(0, height-50);
    // path.quadraticBezierTo(width/2, height, width, height-50);

    // path.lineTo(0, 50); // Changed starting point
    // path.quadraticBezierTo(width / 2, 0, width, 50); // Changed control point

    path.lineTo(0, 150); // Changed starting point to move the shape 100px down
    path.quadraticBezierTo(width / 2, 100, width, 150); // Changed control point to maintain the shape



    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
