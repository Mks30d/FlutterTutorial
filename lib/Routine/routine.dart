import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Routine/routine_api.dart';

class Routine_Widget extends StatefulWidget {
  const Routine_Widget({super.key});

  @override
  State<Routine_Widget> createState() => _Routine_WidgetState();
}

class _Routine_WidgetState extends State<Routine_Widget> {
  var subject = routineapi["Monday"]?[1]["subject"];
  var time = routineapi["Monday"]?[1]["time"];
  var room = routineapi["Monday"]?[1]["room"];
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE5E5EC),
      ),
      child: ListView.builder(
        itemCount: routineapi["Monday"]?.length,
        itemBuilder: (context, index) {

          var subjectTime = routineapi["Monday"]?[index]["time"];
          var subjectCode = routineapi["Monday"]?[index]["subjectCode"];
          var subjectName = routineapi["Monday"]?[index]["subjectName"];
          var subjectTeacher = routineapi["Monday"]?[index]["subjectTeacher"];

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 9, right: 9, top: 5, bottom: 4),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListTile(
                    leading: Text(
                      subjectTime!,
                      style: TextStyle(fontSize: 12),
                    ),
                    title: Text(
                      "$subjectName ($subjectCode)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(subjectTeacher!,
                        style: TextStyle(color: Color(0xFF5E5E5E))),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 5,
              // )
            ],
          );
        },
      ),
    );
  }
}
