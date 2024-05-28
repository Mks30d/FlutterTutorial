import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/Pages/first_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => First_Page(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text(
          "Splash Screen",
        )),
      ),
    );
  }
}
