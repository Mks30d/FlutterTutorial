import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.deepPurple,
        child: Image.asset('assets/images/flutter.png', fit: BoxFit.cover,),

//-----------------Method 2 to import images----------------------
              // child: Image(
              //   image: AssetImage("assets/images/bg.jpg"),
              // ),
      ),
    ));
  }
}
