import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/Pages/first_page.dart';

class Second_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Text(
            "Second page",
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
              // onPressed: () {
              //   Navigator.pop(context, MaterialPageRoute(builder: (context) {
              //       return First_Page();
              //     },
              //   ));
              // },
              child: Text("Previous")),
        ]),
      ),
    );
  }
}
