import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/Pages/second_page.dart';

// navigating from one page to another page
class First_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Text(
        "First Page",
        style: TextStyle(fontSize: 20),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute( builder: (context) {
                return Second_Page();
              },
            ));
          },
          child: Text("Next"))
    ]));
  }
}
