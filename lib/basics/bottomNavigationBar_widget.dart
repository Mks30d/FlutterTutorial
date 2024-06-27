import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigationBar_Widget extends StatefulWidget {
  const BottomNavigationBar_Widget({super.key});

  @override
  State<BottomNavigationBar_Widget> createState() =>
      _BottomNavigationBar_WidgetState();
}

class _BottomNavigationBar_WidgetState
    extends State<BottomNavigationBar_Widget> {
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),


      bottomNavigationBar: Stack(children: [
        Container(
          height: 70,
          color: Colors.blue,
        ),
        NavigationBar(
          height: 50,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          indicatorColor: Colors.blue[200],
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.calendar_month_sharp), label: "Attendance"),
            NavigationDestination(
                icon: Icon(Icons.receipt_outlined), label: "Routine"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            NavigationDestination(
                icon: Icon(Icons.data_object), label: "UserData")
          ],
        ),


      ]),
      body: Container(
        color: Colors.orange,
      ),
    );
  }
}
