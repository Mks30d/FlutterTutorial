import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/Pages/page2.dart';

class Page1 extends StatelessWidget {
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            width: 200,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Text("Page 1"),
                TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: "Enter....",

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.green,
                      )
                    ),

                  ),
                ),

                ElevatedButton(onPressed: () {
                  // print(textController.text.toString());
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2(textController.text),)
                  );

                }, child: Text("Next"))
              ],
            ),
          ),
        ));

//--------------Simple----------------
    //   Scaffold(
    //     body: Center(
    //   child: Container(
    //     width: 200,
    //     alignment: Alignment.topCenter,
    //     child: Column(
    //       children: [
    //         Text("Page 1"),
    //         TextField(
    //           controller: textController,
    //         ),
    //
    //         ElevatedButton(onPressed: () {
    //           // print(textController.text.toString());
    //           Navigator.push(context,
    //               MaterialPageRoute(builder: (context) => Page2(textController.text),)
    //           );
    //         }, child: Text("Next"))
    //       ],
    //     ),
    //   ),
    // ));
  }
}
