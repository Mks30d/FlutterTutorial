import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/basics/CustomButton/custom_button.dart';
import 'package:flutter_basics/basics/Widgets/custom_button.dart';
import 'package:intl/intl.dart';


class Society extends StatefulWidget {
  const Society ({super.key});


  @override
  State<Society> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<Society> {
  DateTime selectedDate= DateTime.now();





  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    String dates= new DateFormat('MMM').format(selectedDate);
    String years= new DateFormat('y').format(selectedDate);
    String days =new DateFormat('d').format(selectedDate);
    String weeks=new DateFormat('EEEE').format(selectedDate);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CODE-ZEN'),
      ),
      body: Container(

          child:Padding(
            padding: const EdgeInsets.fromLTRB(1.0,20.0,4.0,5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1.0,0.0,15.0,0.0),
                  child: Container(
                    // height: size.height*0.17,
                    // width: size.width*0.60,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2.0,4.0,2.0,0.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Custom_Button(btnName: "CODE-ZEN", btnWidth: 100,),
                              Custom_Button(btnName: "CODE-ZEN", btnWidth: 100,),
                              // ElevatedButton(
                              //
                              //   onPressed:()
                              //   {
                              //     if (kDebugMode) {
                              //       print("CLICKED");
                              //     };
                              //   },
                              //   child:  Text("CODE-ZEN3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              //   // style: ButtonStyle(
                              //   //   backgroundColor: MaterialStatePropertyAll(Colors.white),
                              //   // ) ,
                              //   style: ElevatedButton.styleFrom(
                              //
                              //   ),
                              //
                              // ),
                              // ElevatedButton(
                              //   onPressed:()
                              //   {
                              //     if (kDebugMode) {
                              //       print("CLICKED");
                              //     };
                              //   },
                              //   child:  Text("CODE-ZEN3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              //   style: ButtonStyle(
                              //     backgroundColor: MaterialStatePropertyAll(Colors.white),
                              //   ) ,
                              // ),
                            ],
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(2.0,2.0,2.0,4.0),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Custom_Button(btnName: "CODE-ZEN", btnWidth: 100,),
                              Custom_Button(btnName: "CODE-ZEN", btnWidth: 100,),


                              // ElevatedButton(
                              //   onPressed:()
                              //   {
                              //     if (kDebugMode) {
                              //       print("CLICKED");
                              //     };
                              //   },
                              //   child:  Text("CODE-ZEN3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              //   style: ButtonStyle(
                              //     backgroundColor: MaterialStatePropertyAll(Colors.white),
                              //   ) ,
                              // ),

                              // ElevatedButton(
                              //   onPressed:()
                              //   {
                              //     if (kDebugMode) {
                              //       print("CLICKED");
                              //     };
                              //   },
                              //   child:  Text("CODE-ZEN3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                              //   style: ButtonStyle(
                              //     backgroundColor: MaterialStatePropertyAll(Colors.white),
                              //   ) ,
                              // ),

                            ],
                          ),
                        ),

                      ],
                    ),




                  ),
                ),


//=============================Calender Secreen================================
                Container(
                  color: Colors.red,
                  height: 100,
                  // width: 150,

                  child: Column(
                    children: [

                      Container(
                        // color: Colors.white ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              // height: size.height*0.06,
                              // width: size.width*0.34 ,
                              // height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue ,borderRadius: BorderRadius.vertical(top: Radius.circular(10))
                              ),

                              child: Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                                      child: Text(dates,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'Jersey10-Regular'),)
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(30.0,08,0,0),
                                      child: Text(years,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Jersey10-Regular'),)
                                  ),

                                ],
                              ),

                            ),


                          ],
                        ),
                      ),
// ===================================================Spacer(),
                      Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              // height: size.height*0.1100,
                              // width: size.width*0.34,

                              decoration: BoxDecoration(color: Colors.grey.shade800,borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
                              child: ElevatedButton(onPressed: () async{
                                final DateTime? pickedDate= await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate:DateTime(2000),
                                    lastDate: DateTime(2025));
                                if(pickedDate!=null){
                                  selectedDate=pickedDate;
                                };
                              },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(days,style: TextStyle(fontFamily: 'Jersey10-Regular',fontSize: 30, color: Colors.white),),
                                    Text(weeks,style: TextStyle(fontFamily:'Jersey10-Regular',fontWeight: FontWeight.bold,fontSize: 20, color: Colors.white),),
                                  ],
                                ),
                                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey.shade800)),
                              ),






                            ),



                          ],


                        ),
                      )

                      //--------------------------------


                    ],
                  ),
                ),


// =========================================================
//                 Container(
//                   // height: size.height*0.17,
//                   // width: size.width*0.34,
//                   height: 80,
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade800),
//                   child: Column(
//                     children: [
//
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(0.0,0,0,0),
//
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Container(
//                               // height: size.height*0.06,
//                               // width: size.width*0.34 ,
//                               // height: 100,
//                               decoration: BoxDecoration(color: Colors.red ,borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
//                                     child: Text(dates,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Jersey10-Regular'),)
//                                   ),
//                                   Padding(
//                                       padding: const EdgeInsets.fromLTRB(30.0,08,0,0),
//                                       child: Text(years,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Jersey10-Regular'),)
//                                   ),
//
//                                 ],
//                               ),
//
//                               ),
//
//
//                           ],
//                         ),
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(0.0,0,0,0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             Container(
//                               // height: size.height*0.1100,
//                               // width: size.width*0.34,
//
//                               decoration: BoxDecoration(color: Colors.grey.shade800,borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
//                               child: ElevatedButton(onPressed: () async{
//                                 final DateTime? pickedDate= await showDatePicker(
//                                     context: context,
//                                     initialDate: DateTime.now(),
//                                     firstDate:DateTime(2000),
//                                     lastDate: DateTime(2025));
//                                 if(pickedDate!=null){
//                                   selectedDate=pickedDate;
//                                 };
//                               },
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.fromLTRB(0,0,5,10),
//                                       child: Text(days,style: TextStyle(fontFamily: 'Jersey10-Regular',fontSize: 45),),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.fromLTRB(0,18,0,0),
//                                       child: Text(weeks,style: TextStyle(fontFamily:'Jersey10-Regular',fontWeight: FontWeight.bold,fontSize: 16),),
//                                     ),
//                                   ],
//                                 ),
//                                 style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey.shade800)),
//                               ),
//
//
//
//
//
//
//                             ),
//
//
//
//                           ],
//
//
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),



              ],


            ),
          )
      ),




    );
  }
}

