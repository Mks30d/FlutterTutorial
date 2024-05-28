import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  var textFromPage1;
  Page2(this.textFromPage1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("Text: $textFromPage1"),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Previous"))
            ],
          ),
        ),
      ),
    );
  }
  
}