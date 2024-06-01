import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/CarouseSlider/carouselSlider_Image.dart';


class CarouseSlider extends StatefulWidget {
  const CarouseSlider({super.key});

  @override
  State<CarouseSlider> createState() => _CarouseSliderState();
}

class _CarouseSliderState extends State<CarouseSlider> {

  final PageController _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.80  // to see portion of slider on left and right side
  );

  int currentPage = 0;
  late Timer? carouselTimer;
  int selectedIndex = 0;

  Timer getTimer() {
    return Timer.periodic( Duration(milliseconds: 3000), (timer) {
      if (currentPage < images.length-1) {
        currentPage++;
        // currentPage = (currentPage + 1) % images.length;
      }
      else {
        currentPage = 0;
      }
      _pageController.animateToPage(
          currentPage,
          duration:  Duration(milliseconds: 1500),
          curve: Curves.easeIn
      );
    }
    );
  }

  @override
  void initState() {
    super.initState();
    // timer = Timer.periodic( Duration(milliseconds: 2000), (timer) {
    //   if (currentPage < images.length-1) {
    //     currentPage++;
    //     // currentPage = (currentPage + 1) % images.length;
    //   }
    //   else {
    //     currentPage = 0;
    //   }
    //   _pageController.animateToPage(
    //       currentPage,
    //       duration:  Duration(milliseconds: 500),
    //       curve: Curves.easeIn
    //   );
    // }
    // );

    carouselTimer = getTimer();
  }

  @override
  void dispose() {
    carouselTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

//=================Carousel Items=====================
    List<Widget> carouselItems = images.map(
          (carouselImage) {
        return GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("index $carouselImage"))
            );
          },
          onPanDown: (details) {
            carouselTimer?.cancel();
            carouselTimer = null;
          },
          onPanCancel: () {
            carouselTimer = getTimer();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8,right: 8,top: 36, bottom: 20,),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Container(
                height: 100,
                child: Image.asset(
                  carouselImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    ).toList();



    // List<Widget> carouselItems = images.map(
    //       (carouselImage) {
    //     return Padding(
    //       padding: const EdgeInsets.only(left: 8,right: 8,top: 36, bottom: 20,),
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(11),
    //         child: Container(
    //           height: 100,
    //           child: Image.asset(
    //             carouselImage,
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // ).toList();

//------------------Dot Widget-------------------
    Widget dot(bool isActive) {
      return Container(
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50)
        ),
        child: CircleAvatar(
          radius: 5,
          backgroundColor: isActive ? Colors.grey[600] : Colors.grey[300],
        ),
      );
    }

//    Widget dot(bool isActive) {
//       return Container(
//         margin: EdgeInsets.all(2),
//         decoration: BoxDecoration(
//           // border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(50)
//         ),
//         child: CircleAvatar(
//           radius: 5,
//           backgroundColor: isActive ? Colors.grey[600] : Colors.grey[300],
//         ),
//       );
//     }

    List<Widget> dotList() {
      List<Widget> list = [];
      for(int i=0; i<images.length; i++) {
          list.add(i==selectedIndex ? dot(true) : dot(false));
      }
      return list;
    }

//=================================
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 220,
            child: Stack(
              children: [

                PageView(
                  controller: _pageController,
                  children: carouselItems,
                  onPageChanged: (int page) {
                    setState(() {
                      selectedIndex = page;
                    });
                  },
                ),

                Positioned(
                  bottom: 5,
                  left: MediaQuery.of(context).size.width*0.4,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: dotList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// ===============Working carousel slider================
//import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_basics/basics/animation/carouselSlider_Image.dart';
//
// List<Widget> carouselItems = images.map(
//   (carouselImage) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(11),
//         child: Container(
//           child: Image.asset(
//             carouselImage,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   },
// ).toList();
//
// class CarouseSlider extends StatefulWidget {
//   const CarouseSlider({super.key});
//
//   @override
//   State<CarouseSlider> createState() => _CarouseSliderState();
// }
//
// class _CarouseSliderState extends State<CarouseSlider> {
//   final PageController _pageController = PageController(initialPage: 0);
//   int currentPage = 0;
//   late Timer timer;
//
//   @override
//   void initState() {
//     super.initState();
//     timer = Timer.periodic( Duration(milliseconds: 2000), (timer) {
//       if (currentPage < images.length-1) {
//         currentPage++;
//         // currentPage = (currentPage + 1) % images.length;
//       }
//       else {
//         currentPage = 0;
//       }
//       _pageController.animateToPage(
//           currentPage,
//           duration:  Duration(milliseconds: 500),
//           curve: Curves.easeIn
//       );
//     }
//     );
//   }
//
//   @override
//   void dispose() {
//     timer.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     Widget dot(bool isActive) {
//       return Container(
//         child: CircleAvatar(
//           radius: 11,
//           backgroundColor: isActive ? Colors.red : Colors.transparent,
//         ),
//       );
//     }
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 200,
//             child: Stack(
//               children: [
//                 PageView(
//                   controller: _pageController,
//                   children: carouselItems,
//                 ),
//
//                 // dot(true),
//                 // dot(false),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }