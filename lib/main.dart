import 'package:flutter/material.dart';
import 'package:flutter_basics/admin/adminDashboard.dart';
import 'package:flutter_basics/admin/dashboard_1.dart';
import 'package:flutter_basics/basics/CarouseSlider/carouselDesign.dart';
import 'package:flutter_basics/basics/CarouseSlider/carouselSlider.dart';
import 'package:flutter_basics/basics/Design/splitting_appinto_widgets.dart';
import 'package:flutter_basics/basics/Indicator/circularIndicator.dart';
import 'package:flutter_basics/basics/POPUP_Dialog.dart';
import 'package:flutter_basics/basics/URLLauncher.dart';
import 'package:flutter_basics/basics/Widgets/timerClass_widget.dart';
import 'package:flutter_basics/basics/bottomNavigationBar_widget.dart';
import 'package:flutter_basics/basics/pageview_widget.dart';
import 'package:flutter_basics/basics/wrap_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Basics",
      // theme: ThemeData(primarySwatch: Colors.blue,
      // useMaterial3: true,
      // ),

      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          // headline1: , //not in use
          displayLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          // subtitle1:
          titleMedium: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)
        )
      ),

      // themeMode: ThemeMode.light,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark
      // ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// -----------------------------------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //-------- Button ---------
    return Scaffold(

      // appBar: AppBar(
      //   title: Text("HomePage"),
      //   backgroundColor: Theme.of(context).primaryColorDark,
      // ),

//===================================================
//       appBar: AppBar(
//         toolbarHeight: 150,
//         backgroundColor: Colors.transparent,
//         shadowColor: Colors.transparent,
//         excludeHeaderSemantics: true,
//         elevation: 0.0,
//         forceMaterialTransparency: true,
//         centerTitle: true,
//         // title: Text("AppBar"),
//         flexibleSpace: ClipPath(
//           clipper: CustomShap(),
//           child: Container(
//             height: 150,
//             width: MediaQuery.of(context).size.width,
//             color: Colors.blue,
//             child: Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text("data"),
//                   Text("data"),
//                   Text("data"),
//                   Text("data"),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),

//===================================================

        // body: CustomAppBar_Widget()
        body: Center(child: URLLauncher()) ,
        // Custom_Button(btnName: "Play", bgColor: Colors.amber, icon: Icon(Icons.play_arrow), )

      //     OutlinedButton(
    //   child: Text("OutlincedButton"),
    //   onPressed: () {
    //     print("Oulined Button");
    //   },
    // )

        // ElevatedButton(
        //   child: Text("Elevated Btn"),
        //   onPressed: () {
        //     print("Elevated pressed");
        //   },
        // )

        // TextButton(
        //   child: Text("Text Btn"),
        //   onPressed: () {
        //     print("Button Pressed");
        //   },
        //   onLongPress: () {
        //     print("long press");
        //   },
        // ),
        );

    // ------- center widget ---------
    // return Scaffold(
    //   body: Center(
    //     child: Container(
    //         width: 100,
    //         height: 100,
    //         color: Colors.green,
    //         child: Center(
    //           child: Text("Container", style: TextStyle(fontSize: 15),),
    //         )),
    //   ),
    //
    //   // body: Center(
    //   //   child: Text("Center widget", style:TextStyle(fontSize: 25),),
    //   // ),
    //
    //   // body: Text("center text", style: TextStyle( fontSize: 20),),
    // );

    //------- text widget ---------
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Text widget"),
    //   ),
    //
    //   body: Text("Text", style: TextStyle(
    //     color: Colors.blue,
    //     fontSize: 50,
    //     fontWeight: FontWeight.bold,
    //   ),),
    // );

    // ---------container-----------
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Conatiner widget"),
    //   ),
    //   body: Center(
    //     child: Container(
    //       width: 100,
    //       height: 100,
    //       color: Colors.blue,
    //       child: Text("Container"),
    //     ),
    //   ),
    // );
  }
}
