import 'package:flutter/material.dart';

class GridView_Widget extends StatefulWidget {
  const GridView_Widget({super.key});

  @override
  State<GridView_Widget> createState() => _GridView_WidgetState();
}

class _GridView_WidgetState extends State<GridView_Widget> {
  var arrColor = [Colors.blue, Colors.red, Colors.yellowAccent, Colors.lightGreenAccent, Colors.lightBlue, Colors.grey, Colors.pink, Colors.lightGreen];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          // ------------GridView.count------------
          // GridView.count (
          // shrinkWrap: true,  // required when GridView placed inside a Column
          // crossAxisCount: 4,`
          // mainAxisSpacing: 11,
          // crossAxisSpacing: 11,
          // children: [
          //   Container(color: arrColor[0],),
          //   Container(color: arrColor[1],),
          //   Container(color: arrColor[2],),
          //   Container(color: arrColor[3],),
          //   Container(color: arrColor[4],),
          //   Container(color: arrColor[5],),
          //   Container(color: arrColor[6],),
          //   Container(color: arrColor[7],),
          //   Text("data"),
          // ],),

          //------------GridView.extent-------------
          // GridView.extent(
          //   shrinkWrap: true,
          //   maxCrossAxisExtent: 200, // it takes max size of container
          // children: [
          //   Container(color: arrColor[0],),
          //   Container(color: arrColor[1],),
          //   Container(color: arrColor[2],),
          //   Container(color: arrColor[3],),
          //   Container(color: arrColor[4],),
          //   Container(color: arrColor[5],),
          //   Container(color: arrColor[6],),
          //   Container(color: arrColor[7],),
          // ],),
          
          GridView.builder(shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,),
              itemBuilder: (context, index) {
                return Container(color: arrColor[index],);
              },itemCount: arrColor.length,)
        ],
      ),
    );
  }
}
