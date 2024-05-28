import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/listtile_widget.dart';

class SplittingAppIntoWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Status(),
          Secton_1(),
          Section_2(),
          StudentsList(),
        ],
      ),
    );
  }
}

class Status extends StatelessWidget {
  const Status({super.key});
  @override
  Widget build(BuildContext context) {
    return           Container(
      height: 100,
      color: Colors.orange,
      child: ListView.builder(itemBuilder: (context, index) {
        return CircleAvatar(
          radius: 40,
        );
      },itemCount: 10,scrollDirection: Axis.horizontal,),
    );
  }
}

class StudentsList extends StatelessWidget {
  var arrName= ["Aman", "Rohan", "Abhishek", "Rakesh", "Rishu", "Mks", "Mohit", "Aryan"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: Text("${index+1}"),
          title: Text(arrName[index]),
          subtitle: Text("...."),
          trailing: Icon(Icons.add),
        );
      },itemCount: 8, scrollDirection: Axis.vertical,),
    );
  }
}

class Secton_1 extends StatelessWidget {
  const Secton_1({super.key});
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 100,
        color: Colors.yellowAccent,
      );
  }
}

class Section_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.green,
    );
  }
}
