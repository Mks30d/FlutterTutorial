import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageSwitch extends StatefulWidget {
  const PageSwitch({super.key});

  @override
  State<PageSwitch> createState() => _PageSwitchState();
}

class _PageSwitchState extends State<PageSwitch> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              child: DatePage(),
            ),
            Container(
              // height: 100,
              width: double.infinity,
              child: RoutinePage(),
            ),
            Container(
              width: double.infinity,
              child: nextDaysPage(),
            )
          ],
        ),
      ),
    );
  }
}

// -------------------DatePage------------------

class DatePage extends StatefulWidget {
  const DatePage({super.key});

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();

    // Generate a list of the next 5 days including the current date
    List<DateTime> nextDays = List.generate(7, (index) {
      return dateTime.add(Duration(days: index));
    });

    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: nextDays.length, // Assuming 6 containers including the current day
          itemBuilder: (context, index) {
            // var day = dateTime.add(Duration(days: index));  // OR
            // Use the precomputed date
            DateTime day = nextDays[index];

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4, left: 4),
                  child: InkWell(
                    onTap: () {
                      print("--> $index");
                    },
                    child: Container(
                      height: 80,
                      width: 70,
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          "${DateFormat('dd').format(day)}\n${DateFormat('E').format(day)}",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

// -------------------RoutinePage---------------------------

class RoutinePage extends StatefulWidget {
  const RoutinePage({super.key});

  @override
  State<RoutinePage> createState() => _RoutinePageState();
}

class _RoutinePageState extends State<RoutinePage> {
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();

    return Container(
      height: 300,
      color: Colors.green,
      child: Column(
        children: [
          Text(
            "Time: ${dateTime}",
            style: TextStyle(fontSize: 20),
          ),
          Text("Date: ${dateTime.day}-${dateTime.month}-${dateTime.year}"),
          Text(
              "Time: ${dateTime.hour}:${dateTime.minute}:${dateTime.second}: ${dateTime.millisecond}\n"),
          Text("Time: ${DateFormat("Hms").format(dateTime)}"),
          Text("Weekdays: ${DateFormat("EEEE").format(dateTime)}"),
          Text("time: ${DateFormat("jms").format(dateTime)}"),
          Text("date: ${DateFormat("yMMMd").format(dateTime)}"),
        ],
      ),
    );
  }
}

class nextDaysPage extends StatefulWidget {
  const nextDaysPage({super.key});

  @override
  State<nextDaysPage> createState() => _nextDaysPageState();
}

class _nextDaysPageState extends State<nextDaysPage> {
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();

    // Generate a list of the next 4 days
    List<DateTime> nextDays =
        List.generate(4, (index) => dateTime.add(Duration(days: index + 1)));

    return Container(
      height: 300,
      color: Colors.orange,
      child: Column(
        children: [
          Text(
            "Time: ${dateTime}",
            style: TextStyle(fontSize: 20),
          ),
          Text("Date: ${dateTime.day}-${dateTime.month}-${dateTime.year}"),
          Text("Weekdays: ${DateFormat("EEEE").format(dateTime)}"),
          Text("Date: ${DateFormat("yMMMd").format(dateTime)}"),

          // Display the dates and weekdays of the next 4 days
          for (var day in nextDays)
            Text(
              "${DateFormat("EEEE").format(day)}, "
              "${DateFormat("yMMMd").format(day)}",
              style: TextStyle(fontSize: 16),
            ),
        ],
      ),
    );
  }
}
