import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar_Widget_1 extends StatefulWidget {
  const CustomAppBar_Widget_1({super.key});

  @override
  State<CustomAppBar_Widget_1> createState() => _CustomAppBar_WidgetState();
}

class _CustomAppBar_WidgetState extends State<CustomAppBar_Widget_1> {
  int _currentIndex=0;
  TextStyle myStyle = TextStyle(color: Colors.white,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // drawer: Drawer(
      //   backgroundColor: Colors.blue[400],
      // ),

      appBar: AppBar(
        toolbarHeight: 150,
        // toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white), // Change the color of the drawer icon here
        shadowColor: Colors.transparent,
        excludeHeaderSemantics: true,
        elevation: 0.0,
        forceMaterialTransparency: true,
        centerTitle: true,
        // title: Text("AppBar"),

        // leading: Container(
        //   color: Colors.red,
        //   // margin: EdgeInsets.only(top: 0), // Adjust the top margin to position the icon
        //   child: IconButton(
        //     icon: Icon(Icons.menu),
        //       onPressed: () {
        //       // Add your onPressed logic here
        //       },
        //   ),
        // ),

        flexibleSpace: ClipPath(
          clipper: CustomShape(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            // color: Color(0xff5757A4),
            color: Colors.blue[700],

            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 0, bottom: 20, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(11.0),
                          // child: Icon(Icons.menu, color: Colors.white, size: 30,),
                          child: IconButton(
                            icon: Icon(Icons.menu, color: Colors.white, size: 30,),
                            onPressed: () {
                              print("Drawer");
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        ),
                        Spacer(),

                        ElevatedButton(onPressed: () {
                          return print("object");
                        }, child: Text("click")),
                        
                        Padding(
                          padding: EdgeInsets.all(11.0),
                          // child: Icon(Icons.notifications, color: Colors.white, size: 30,),
                          child: IconButton(
                            icon: Icon(Icons.notifications, color: Colors.white, size: 30,),
                            onPressed: () {},
                          ),

                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("PYQ    ", style: myStyle,),
                        Text("Notes  ", style: myStyle,),
                        Text("Faculty", style: myStyle,),
                        Text("Clubs  ", style: myStyle,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

//================================================
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index){
          setState(() {
            _currentIndex=index;
          });
        },
        indicatorColor: Colors.blue[200],
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.calendar_month_sharp), label: "Attendance"),
          NavigationDestination(icon: Icon(Icons.receipt_outlined), label: "Routine"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      // body: [const Hom(),const Attendance(),const Routine(),const Profile()][_currentIndex],
      // body: Homepage_1(),

    );
  }
}


class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    // path.lineTo(0, height-50);
    // path.quadraticBezierTo(width/2, height, width, height-50);

    path.lineTo(0, 150); // Changed starting point to move the shape 100px down
    path.quadraticBezierTo(width / 2, 100, width, 150); // Changed control point to maintain the shape

    path.lineTo(width, 0);

    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}