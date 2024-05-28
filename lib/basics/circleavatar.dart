import 'package:flutter/material.dart';

class CircleAvatar_widget extends StatelessWidget {
  const CircleAvatar_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircleAvatar(
        child: Container(
          height: 50,
          width: 50,
          child: Column(
            children: [
              Container(
                height: 20,
                width: 20,
                child: Image.asset("assets/images/dart.png"),
              ),
              Text("Name"),
            ],
          ),
        ),
        backgroundColor: Colors.red,

        radius: 40,
      ),

      //--------------------------------------
      //     Container(
      //   height: 100,
      //   width: 100,
      //   child: CircleAvatar(
      //     backgroundImage: AssetImage("assets/images/dart.png"),
      //     backgroundColor: Colors.amber,
      //     radius: 100,
      //   maxRadius: 50,
      //   minRadius: 30,
      //   ),
      // ),
    );
  }
}
