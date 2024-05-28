import 'package:flutter/material.dart';

class ListView_builder extends StatelessWidget {
  const ListView_builder({super.key});

  @override
  Widget build(BuildContext context) {
    var arrName = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
    ];
    return Scaffold(
      body: ListView.builder(
        // ListView has predefined scroll
        scrollDirection: Axis.horizontal,
        itemCount: arrName.length, // defines the number of items in a list.
        // reverse: true,
        itemExtent:100, //adjusts the height of each child in the main axis of a list item

        itemBuilder: (context, index) {
          return Row(
            children: [
              Text(arrName[index]),
              Text(
                arrName[index],
                style: TextStyle(fontSize: 20),
              ),
            ],
          );
        },
      ),
    );
  }
}
