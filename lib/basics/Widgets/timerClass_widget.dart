import 'dart:async';

import 'package:flutter/material.dart';

class TimerClass_Widget extends StatefulWidget {
  const TimerClass_Widget({super.key});

  @override
  State<TimerClass_Widget> createState() => _TimerClass_WidgetState();
}

class _TimerClass_WidgetState extends State<TimerClass_Widget> {

  var timeLeft = 5;

  void timerCountdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if(timeLeft>0){
          timeLeft--;
          print(timer.tick);
        }
        // else if() {
        //
        // }
        else {
          timer.cancel();
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                timeLeft == 0 ? "DONE" : timeLeft.toString() ,
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  onPressed: (){
                    timerCountdown();
                  },
                  child: Text("START"))
            ],
          ),
        ),
      ),
    );
  }
}
