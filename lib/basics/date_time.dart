import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date_Time extends StatefulWidget {
  // const Date_Time({super.key});

  @override
  State<Date_Time> createState() => _Date_TimeState();
}

class _Date_TimeState extends State<Date_Time> {

  Widget customDate() {
    return Container(
      height: 100,
      color: Colors.orange,
    );
  }
  @override
  Widget build(BuildContext context) {
  var time = DateTime.now();

    return Scaffold(
      body: Column(
        children: [
          customDate(),
          Text("Time: ${time}", style: TextStyle(fontSize: 20),),

          Text("Date: ${time.day}-${time.month}-${time.year}"),
          Text("Time: ${time.hour}:${time.minute}:${time.second}: ${time.millisecond}\n"),

          Text("Time: ${DateFormat("Hms").format(time)}"),
          Text("Time: ${DateFormat("EEEE").format(time)}"),
          Text("Time: ${DateFormat("jms").format(time)}"),
          Text("Time: ${DateFormat("yMMMd").format(time)}"),

          ElevatedButton(onPressed: (){
            setState(() {  //to refresh time
            });
          }, child: Text("Click")),

          // using intl package
          //----------- Date and Time picker ------------------------
          Text("Select Date"),
          ElevatedButton(onPressed: () async {
            DateTime? datePicked = await showDatePicker(
                context: context,
                // firstDate: DateTime(2020,DateTime.october),
                firstDate: DateTime(2023,10),
                lastDate: DateTime.now()
            );

            if(datePicked != null) {
              print("Date: ${datePicked.day}-${datePicked.month}-${datePicked.year}");
              print("Date: ${DateFormat("yMMMd").format(datePicked)}");

            }
          }, child: Text("Select Date")),

          //============================================
          Text("Select Time"),
          ElevatedButton(onPressed: () async {
            TimeOfDay? timePicked= await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input,
            );

            if(timePicked != null) {
              print("Time: ${timePicked.hour}:${timePicked.minute}");
            }
          }, child: Text("Select Time"))
        ],
      ),
    );;
  }
}
