import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/Ramashis/faculty.dart';




void main() {
  runApp( MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp( {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Faculty(),
    );
  }
}

