import 'package:flutter/material.dart';

class Important extends StatelessWidget {
  // const Important({super.key});

  final List<Color> colors = [
    // Color(0xffF3F9F9), //white
    // Color(0xff2F334E), //black
    Color(0xff3C70FD), //blue
    Color(0xffF11E60), //red
    Color(0xff8C4DE8), //purple
    // Color(0xff01DB64), //green
    Color(0xff00c95d), //green
  ];


List<String> days = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
];


  var studentAttendance = [
    100, 66, 75, 98, 100, 66, 75, 98, 77, 66, 75, 98, 77
  ];

  var subjectDetails = [
    {
      "subjectCode": "KCA201",
      "subjectName": "Theory of Automata & Formal Languages",
      "subjectShortForm": "TAFL",
      "subjectTeacher": "Ms. Janeet Kaur",
    },
  ];

  final List<String> containerDetails = [
    "Attendance",
    "Faculty",
    "Notes",
    "PYQ",
    "Routine",
    "Society",
    "Notification",
  ];


  @override
  Widget build(BuildContext context) {

    return const Placeholder();
  }
}
