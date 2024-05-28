import 'package:flutter/material.dart';

TextStyle myTextStyle21green() {
  return TextStyle(
    fontSize: 21,
    color: Colors.green,
  );
}

TextStyle myTextStyle21orange() {
  return TextStyle(
    fontSize: 21,
    color: Colors.orange,
  );
}

TextStyle myTextStyleDefault({Color textColor = Colors.purple, FontWeight fontWeight = FontWeight.bold}) {
  return TextStyle(
    color: textColor, // Set text color here
    fontWeight: fontWeight,  // Set font weight here
    fontSize: 30,
  );
}
