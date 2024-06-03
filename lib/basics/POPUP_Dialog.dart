import 'package:flutter/material.dart';

class POPUP_Widget extends StatelessWidget {
  const POPUP_Widget({super.key});

  void openPOPUP(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("TITLE"),
          content: Text("Description....."),
          elevation: 10,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Close"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Container(
                  child: AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11)
                    ),
                    title: Text("Titile"),
                    content: Text("Content details...."),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Close"))
                    ],
                  ),
                );
              },
            );
          },
          child: Text(
            "POPUP",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
          ),
        ),
      ),
    );
  }
}
