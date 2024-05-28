import 'package:flutter/material.dart';

class ScrollViewWidget extends StatelessWidget {
  const ScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10, top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 200,
                      width: 200,
                      color: Colors.purple,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 200,
                      width: 200,
                      color: Colors.deepOrangeAccent,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 200,
              color: Colors.orange,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 200,
              color: Colors.purple,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 200,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 200,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
