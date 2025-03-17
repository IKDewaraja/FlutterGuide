import 'package:flutter/material.dart';


//layout 02

 void main(){
    runApp(const MyApp());
 }

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Layout 02",
      home: Scaffold(
        appBar: AppBar (

          backgroundColor: const Color(0XFF9E00FF),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            Container(
              color: const Color(0XFF06FFA5),
              height: 175,
              width: double.infinity,
            ),

            Container(
              color: const Color(0XFF06FFA5),
              height: 175,
              width: double.infinity,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
           color: const Color(0XFFFFE500),
              height: 300,
              width: 175,

                ),

                 Container(
           color: const Color(0XFFFFE500),
              height: 300,
              width: 175,

                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}