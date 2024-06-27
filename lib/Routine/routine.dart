import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routine_Widget extends StatefulWidget {
  const Routine_Widget({super.key});

  @override
  State<Routine_Widget> createState() => _Routine_WidgetState();
}

var routineapi = {
  "Monday": [
    {
      "subject": "Math",
      "time": "09:00-10:00",
      "room": "101"
    },
    {"subject": "English", "time": "10:15-11:15", "room": "102"}
  ],
  "Tuesday": [
    {
      "subject": "Physics",
      "time": "09:00-10:00",
      "room": "201"
    },
  ]
};
class _Routine_WidgetState extends State<Routine_Widget> {
  var subject = routineapi["Monday"]?[1]["subject"];
  var time = routineapi["Monday"]?[1]["time"];
  var room = routineapi["Monday"]?[1]["room"];
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: TextButton(onPressed: (){
    //     print("$subject, $time, $room");
    //     print("Clicked...");
    //   }, child: Text("Click")),
    // );


    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE5E5EC),
      ),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          // var subjectCode = subjectDetails[index]["subjectCode"];
          // var subjectName = subjectDetails[index]["subjectName"];
          // var subjectTeacher = subjectDetails[index]["subjectTeacher"];
          // var subjectAttendance = studentAttendance[index];
          var subjectTime = "9:00 am";
          var subjectCode = "Code";
          var subjectName = "Subject Name";
          var subjectTeacher = "Subject Teacher";
          var subjectAttendance = 90;

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 11, right: 11, top: 1, bottom: 1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    leading: Text(subjectTime, style: TextStyle(fontSize: 12),),

                    title: Text("$subjectName ($subjectCode)", style: TextStyle(fontWeight: FontWeight.bold),),

                    subtitle: Text(subjectTeacher!,
                        style: TextStyle(color: Color(0xFF5E5E5E))),

                  ),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          );
        },
      ),
    );
  }
}
