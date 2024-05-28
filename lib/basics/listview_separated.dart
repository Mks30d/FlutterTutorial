import 'package:flutter/material.dart';

class ListView_separated extends StatelessWidget {
  const ListView_separated({super.key});

  @override
  Widget build(BuildContext context) {
    var arrName = [
      "Rohan",
      "Rakesh",
      "Akash",
      "Mks",
      "Aman",
      "Mohit",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.separated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text(arrName[index]),
                Text(arrName[index], style: TextStyle(fontSize: 20),),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 100,
              thickness: 1,
            );
          },
          itemCount: arrName.length),
    );
  }
}
