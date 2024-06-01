import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget"),
      ),
      body: Container(
        // color: Colors.green,
        height: 80,
        alignment: Alignment.center,
        child: const Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "FLUTTER",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),

              //*********** how To control the overflow of the text ************
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "If you want the Text widget to take up all available space within its parent Column and handle overflow appropriately, you can wrap it in an Expanded widget. This will allow the Text widget to use the remaining space in the Column.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  // softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
