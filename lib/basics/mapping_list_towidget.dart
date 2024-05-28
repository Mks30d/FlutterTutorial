import 'package:flutter/material.dart';
var arrList = [
  "mks", "Rohan", "Akash" , "Mohit", "Aman"
];

var arrList1 = [
  {
    "name" : "Mks",
    "phone" : "789456123",
    "notification" : "3"
  },  {
    "name" : "Rohan",
    "phone" : "789456123",
    "notification" : "2"
  },  {
    "name" : "Raj",
    "phone" : "789456123",
    "notification" : "1"
  },  {
    "name" : "Raksh",
    "phone" : "789456123",
    "notification" : "6"
  },  {
    "name" : "Mohan",
    "phone" : "789456123",
    "notification" : "3"
  },{
    "name" : "Mks",
    "phone" : "789456123",
    "notification" : "3"
  },  {
    "name" : "Rohan",
    "phone" : "789456123",
    "notification" : "2"
  },  {
    "name" : "Raj",
    "phone" : "789456123",
    "notification" : "1"
  },  {
    "name" : "Raksh",
    "phone" : "789456123",
    "notification" : "6"
  },  {
    "name" : "Mohan",
    "phone" : "789456123",
    "notification" : "3"
  },{
    "name" : "Mks",
    "phone" : "789456123",
    "notification" : "3"
  },  {
    "name" : "Rohan",
    "phone" : "789456123",
    "notification" : "2"
  },  {
    "name" : "Raj",
    "phone" : "789456123",
    "notification" : "1"
  },  {
    "name" : "Raksh",
    "phone" : "789456123",
    "notification" : "6"
  },  {
    "name" : "Mohan",
    "phone" : "789456123",
    "notification" : "3"
  },

];

class Mapping extends StatelessWidget {
  // const Mapping ({super.key});
  @override
  Widget build(BuildContext context) {
    return ExtraMapping();
    return SimpleMapping();
  }
}
//-----------------------------------------------------
class SimpleMapping extends StatelessWidget {
  const SimpleMapping({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children:
          arrList.map((value) {
            return Container(
              child: Text(value),
            );
          }).toList()
      ),
    );
  }
}
//-----------------------------------------------------
class ExtraMapping extends StatelessWidget {
  const ExtraMapping({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: arrList1.map((value) {
        return Container(
          child: ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(value["name"].toString()),
            subtitle: Text(value["phone"].toString()),
            trailing: Text(value["notification"].toString()),
          ),
        );
      }).toList(),
    );
  }
}

