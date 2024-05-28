import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

class StylesAndThemes_Widget extends StatelessWidget {
  const StylesAndThemes_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // styling text using normal way
          Text("Hello world", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text("Hello world", style: TextStyle(fontSize: 20),),

          // styling text by definning common style in main.dart
          Text("Hello world", style: Theme.of(context).textTheme.displayLarge,),
          Text("Hello world", style: Theme.of(context).textTheme.titleMedium,),

          // common style from main.dart with extra attributes using copyWith()
          Text("Hello world", style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.red),),  // common style from main.dart
          Text("Hello world", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.blue),),

          // by creating a file util.dart and importing user defined function() in util.dart for styling
          Text("Hello world", style: myTextStyle21green(),),

          Text("Hello world", style: myTextStyleDefault(),),
          Text("Hello world", style: myTextStyleDefault(textColor: Colors.yellowAccent),),
          Text("Hello world", style: myTextStyleDefault(textColor: Colors.lightGreen, fontWeight: FontWeight.normal),),
        ],
      ),
    );
  }
}
