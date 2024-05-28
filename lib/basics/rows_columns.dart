import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 100,
        color: Colors.amberAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          // children: <Text> [  // will only allow Text widget
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("C1"),
                Text("C2"),
                OutlinedButton(onPressed: () {}, child: Text("Outlined")),
              ],
            ),
            Text("R1"),
            Text("R2"),
            Text("R3"),
            Text("R4"),
            ElevatedButton(
                onPressed: () {
                  print("Elevated Button");
                },
                child: Text("Elevated Btn")),
          ],
        ),
      ),
    );
  }
}
