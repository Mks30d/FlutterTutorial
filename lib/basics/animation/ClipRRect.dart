import 'package:flutter/material.dart';

class ClipRRect_Widget extends StatelessWidget {
  const ClipRRect_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ClipRRect(
            // borderRadius: BorderRadius.all(Radius.elliptical(300, 120)),
            // borderRadius: BorderRadius.all(Radius.elliptical(300, 70)),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomRight: Radius.circular(100),),
            // borderRadius: BorderRadius.only(topLeft: Radius.elliptical(300, 50), topRight: Radius.elliptical(300, 50)),

            child:
            Container(
                height: 200,
              color: Colors.blue,
            ),
          ),


          Container(
            child: Image.asset("assets/images/logo.png"),
          ),

          Container(
            child: Image(
              image: AssetImage(
                  "assets/images/bg.jpg"
              ),
            ),
          ),
        ],
      ),
    );
  }
}
