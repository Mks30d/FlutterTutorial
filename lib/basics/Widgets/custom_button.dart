import 'package:flutter/material.dart';

// called in main.dart as
// Custom_Button(btnName: "Play", bgColor: Colors.amber, icon: Icon(Icons.play_arrow), )

class Custom_Button_Widget extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  // final VoidCallback? callback;

  Custom_Button_Widget(
      {required this.btnName, this.icon, this.bgColor=Colors.blue, /*this.callback*/ });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ElevatedButton(
          onPressed: () {
            // callback!();
            print("Clicked...");
          },
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(11)),
          )
        ),
          child: icon != null ? Row( children: [icon!, Text(btnName)],)
                              : Text(btnName, style: TextStyle(color: Colors.red),),
      ),
    );
  }
}
