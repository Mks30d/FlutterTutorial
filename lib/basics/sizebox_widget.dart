import 'package:flutter/material.dart';

class Sizebox_Widget extends StatelessWidget {
  const Sizebox_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SizedBox(  //SizedBox is used to specify a fixed width and height for a box and has no other properties
        width: 100,
        height: 30,
        child: ElevatedButton(
          onPressed: (){},
          child: Text("Button"),
        ),
      ),

      //------------------SizedBox.square----------------------
      // SizedBox.square(  //SizedBox is used to specify a fixed width and height for a box and has no other properties
      //   dimension: 100,
      //   child: ElevatedButton(
      //     onPressed: (){},
      //     child: Text("Button"),
      //   ),
      // ),

      //------------------SizedBox.shrink----------------------

      // SizedBox.shrink(   // it will take min size of parent widget if the widget has min size otherwise it has zero size
      //   child: ElevatedButton(
      //     onPressed: (){},
      //     child: Text("Button"),
      //   ),
      // ),

        //--------------SizedBox.expand--------------
      // SizedBox.expand(  // it will take max size of parent widget
      //   child: ElevatedButton(
      //     onPressed: (){},
      //     child: Text("Button"),
      //   ),
      // ),

    );
  }
}
