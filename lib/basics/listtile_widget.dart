import 'package:flutter/material.dart';

class ListTile_Widget extends StatelessWidget {
  const ListTile_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    var arrName = [
      "Rohan", "Aman", "Rakesh", "Abhishek", "Aryan", "Mohit", "Akash", "Rohit", "Lucky",
    ];
    return Scaffold(
      body: ListView.separated(
        itemCount: arrName.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${index + 1}"),
            title: Text(arrName[index]),
            subtitle: Text("Number"),
            // isThreeLine: true,
            // dense: true,
            trailing: Icon(Icons.add),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0,
            thickness: 1,
          );
        },
        // itemCount: arrName.length,
      ),

      // ListView.builder(
      //   itemCount: arrName.length,
      //   itemBuilder: (context, index) {
      //   return ListTile(
      //     leading: Text("${index + 1}"),
      //     title: Text(arrName[index]),
      //     subtitle: Text("Number"),
      //     // isThreeLine: true,
      //     // dense: true,
      //     trailing: Icon(Icons.add),
      //   );
      // },),
    );
  }
}
