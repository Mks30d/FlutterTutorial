import 'package:flutter/material.dart';

class CallBack_Func extends StatelessWidget {
  const CallBack_Func({super.key});

  // callback function is a function that is passed as a argument into another function to perform an action
  void callBackFunc() {
    print("Clicked!!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: Text("Click"),
        onPressed: callBackFunc  //passed as a argument
      ),
    );
  }
}
