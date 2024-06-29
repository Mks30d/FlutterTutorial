// import 'package:flutter/material.dart';
//
// var dataAPI = [
//   {
//     "subjectCode": "KCA201",
//     "subjectName": "Theory of Automata & Formal Languages",
//     "subjectShortForm": "TAFL",
//     "subjectTeacher": "Ms. Janeet Kaur",
//   },
//   {
//     "subjectCode": "KCA202",
//     "subjectName": "Object Oriented Programming",
//     "subjectShortForm": "OOPs",
//     "subjectTeacher": "Ms. Shobha G",
//   },
// ];
//
// class Routine_Test extends StatefulWidget {
//   const Routine_Test({super.key});
//
//   @override
//   State<Routine_Test> createState() => _Routine_TestState();
// }
//
// class _Routine_TestState extends State<Routine_Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Colors.blueAccent,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {},
//                 child: Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.orange,
//                   child: Text("Orange"),
//                 ),
//               ),
//               Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.blueAccent,
//                 child: Text("Blue"),
//               ),
//             ],
//           ),
//           Container(
//             height: 300,
//             width: double.infinity,
//             color: Colors.green,
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Routine_Test extends StatefulWidget {
  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<Routine_Test> {
  // Routine data
  var routineapi = {
    "Monday": [
      {"subject": "Math", "time": "09:00-10:00", "room": "101"},
      {"subject": "English", "time": "10:15-11:15", "room": "102"}
    ],
    "Tuesday": [
      {"subject": "Physics", "time": "09:00-10:00", "room": "201"},
      {"subject": "Chemistry", "time": "10:15-11:15", "room": "202"}
    ],
    "Wednesday": [
      {"subject": "Biology", "time": "09:00-10:00", "room": "301"},
      {"subject": "History", "time": "10:15-11:15", "room": "302"}
    ],
    "Thursday": [
      {"subject": "Math", "time": "09:00-10:00", "room": "101"},
      {"subject": "Computer Science", "time": "10:15-11:15", "room": "102"}
    ],
    "Friday": [
      {"subject": "Physical Education", "time": "09:00-10:00", "room": "Gym"},
      {"subject": "Art", "time": "10:15-11:15", "room": "Art Room"}
    ]
  };

  // Days list
  List<String> days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];

  // Selected day for routine display
  String selectedDay = "Monday";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          // =============================================
          // Upper part: Days containers
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: routineapi.length,
              itemBuilder: (BuildContext context, int index) {
                // Calculate day index based on current day
                // int dayIndex = (DateTime.now().weekday - 1 + index);
                // int dayIndex = index;
                // DateTime day = nextDays[index];
                String day = days[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDay = day;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    color: selectedDay == day ? Colors.blueAccent : Colors.grey,
                    alignment: Alignment.center,
                    child: Text(
                      day.substring(0, 3), // Display abbreviated day name
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),


          // =========================================================
          // Lower part: Routine data display
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Routine for $selectedDay:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: routineapi[selectedDay]?.length,
                      itemBuilder: (BuildContext context, int index) {
                        var subject = routineapi[selectedDay]?[index];
                        return ListTile(
                          title: Text(subject!['subject']!),
                          subtitle: Text(
                              'Time: ${subject['time']}, Room: ${subject['room']}'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
