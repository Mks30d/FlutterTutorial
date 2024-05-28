import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedContainer_1 extends StatefulWidget {
  const AnimatedContainer_1({super.key});

  @override
  State<AnimatedContainer_1> createState() => _Animation_1State();
}

class _Animation_1State extends State<AnimatedContainer_1> {
  var _width = 100.0;
  var _height = 100.0;
  bool flag = true;
  Decoration myDeco = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.blue
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              child: Container(
                // child: Image(
                //   image: AssetImage("assets/images/bg.jpg"),
                // ),
                child: Image.asset("assets/images/bg.jpg", width: 200,),
              ),
            ),
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: myDeco,
              curve: Curves.bounceIn,
              duration: Duration(seconds: 1),
            ),
      
            ElevatedButton(onPressed: () {
              setState(() {
                if(flag) {
                  _width = 100;
                  _height = 100;
                  flag = false;
                  myDeco = BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: Colors.blue,
                  );
                } else {
                  _width = 150;
                  _height = 150;
                  flag = true;
                  myDeco = BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.blue,
                  );
                }
              });
            }, child: Text("Animation"))
          ],
        ),
      ),
    );
  }
}
