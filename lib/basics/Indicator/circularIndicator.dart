import 'package:flutter/material.dart';

class CircularIndictor extends StatefulWidget {
  const CircularIndictor({Key? key}) : super(key: key);

  @override
  State<CircularIndictor> createState() => _CircularIndictorState();
}

class _CircularIndictorState extends State<CircularIndictor>
    with SingleTickerProviderStateMixin {
  // late AnimationController _controller;

  @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 1),
  //   )..repeat();
  // }

  double percentage = 75 / 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: TweenAnimationBuilder<double>(
      //     tween: Tween<double>(begin: 0, end: percentage),
      //     duration: Duration(seconds: 3),
      //     builder: (BuildContext context, double value, Widget? child) {
      //       return CircularProgressIndicator(
      //         color: Colors.green,
      //         backgroundColor: Colors.grey[300],
      //         value: value,
      //         strokeWidth: 5,
      //         strokeAlign: 10, // to control radius
      //         strokeCap: StrokeCap.round // to add borderRadiius in inner line,
      //       );
      //     },
      //   ),
      // ),

      body: SizedBox(
        width: 100,
        height: 100,
        child: Stack( children: [
          Center(
            child: CircularProgressIndicator(
              value: percentage,
              color: Colors.green,
              backgroundColor: Colors.grey[300],
              // strokeWidth: 8,
              strokeAlign: 6,
              strokeCap: StrokeCap.round,
            ),
          ),
          Center(child: Text("data")),
        ]),
      ),
    );
  }
  //
  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }
}

// -----------------------------------------

// import 'package:flutter/material.dart';
//
// class CircularIndictor extends StatefulWidget {
//   const CircularIndictor({super.key});
//
//   @override
//   State<CircularIndictor> createState() => _CircularIndictorState();
// }
//
// class _CircularIndictorState extends State<CircularIndictor> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CircularProgressIndicator(
//         color: Colors.green,
//         backgroundColor: Colors.grey[300],
//         value: 0.4,
//       ),
//     );
//   }
// }
