import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/mapping_list_towidget.dart';

class CustomAppBar_Widget extends StatefulWidget {
  const CustomAppBar_Widget({super.key});

  @override
  State<CustomAppBar_Widget> createState() => _CustomAppBar_WidgetState();
}

class _CustomAppBar_WidgetState extends State<CustomAppBar_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtraMapping(),

      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        excludeHeaderSemantics: true,
        elevation: 0.0,
        forceMaterialTransparency: true,
        centerTitle: true,
        // title: Text("AppBar"),
        flexibleSpace: ClipPath(
          clipper: CustomShap(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("data"),
                  Text("data"),
                  Text("data"),
                  Text("data"),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}


class CustomShap extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    // path.lineTo(0, height-50);
    // path.quadraticBezierTo(width/2, height, width, height-50);

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