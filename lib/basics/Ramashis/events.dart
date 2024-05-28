import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/CustomButton/custom_button.dart';
class events extends StatelessWidget {
  const events({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;


    return Scaffold(
       body: Container(
         // height: size.height*0.17,
         // width: size.width*0.60,

         width: 200,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
         child: Column(


           children: [
             Padding(
               padding: const EdgeInsets.fromLTRB(2.0,4.0,2.0,0.0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [


                   Padding(
                     padding: const EdgeInsets.fromLTRB(1.0,15.0,8.0,0.0),
                     child: Custom_Button(btnName: "CODE-COD", btnWidth: 90,),
                   ),




                   Padding(
                     padding: const EdgeInsets.fromLTRB(1.0,15.0,1,0.0),
                     child: Custom_Button(btnName: "CODE", btnWidth: 90,),
                   ),




                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(2.0,2.0,2.0,4.0),
               child: Row(


                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(1.0,10.0,8.0,0.0),
                     child: Custom_Button(btnName: "CODE", btnWidth: 90,),
                   ),


                   Padding(
                     padding: const EdgeInsets.fromLTRB(1.0,10.0,1,0.0),
                     child: Custom_Button(btnName: "CODE", btnWidth: 90,),
                   ),




                 ],
               ),
             ),


           ],
         ),




       ),
    );
  }
}
