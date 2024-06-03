import 'package:flutter/material.dart';

class CarouselDesign extends StatefulWidget {
  const CarouselDesign({super.key});

  @override
  State<CarouselDesign> createState() => _CarouselDesignState();
}

class _CarouselDesignState extends State<CarouselDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  // borderRadius: BorderRadius.circular(111),
                ),
                child: Stack(children: [
                  Container(
                    color: Colors.blue,
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      "assets/images/coding.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.grey[500],
                      gradient: LinearGradient(
                          colors: [
                            // Color(0xff24e02d),
                            // Colors.black,
                            Color(0xc7000000),
                            Color(0x0),
                          ],
                          stops: [
                            0.0,
                            0.99
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                      // borderRadius: BorderRadius.circular(11)
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "FLUTTER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Details",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  // borderRadius: BorderRadius.circular(111),
                ),
                child: Stack(children: [
                  Container(
                    color: Colors.blue,
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      "assets/images/coding.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0x73000000),
                      // borderRadius: BorderRadius.circular(11)
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FLUTTER",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Details",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: Colors.black, width: 2)),

                child: Column(
                  children: [

                    Stack(children: [
                      Container(
                        color: Colors.blue,
                        width: double.infinity,
                        height: 101,
                        child: Image.asset(
                          "assets/images/coding.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0x73000000),
                          // borderRadius: BorderRadius.circular(11)
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "FLUTTER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ]
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          height: 45,
                          width: double.infinity,
                          child: Text(
                            "Details",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
