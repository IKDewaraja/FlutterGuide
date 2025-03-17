import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Layout 03",
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        appBar: AppBar(
          backgroundColor: const Color(0XFF9E00FF),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),

          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                        color: const Color(0XFF06FFA5),
                  ),

                  ),
                Container(
                  height: 175,
                  width: 175,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF06FFA5),
                  ),
                ),
              ],
            ),

               Container(
                height: 175,
                width: double.infinity,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFF06FFA5),
                  ),
              ),

              SizedBox(
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        color: const Color(0xff0FFE500),
                        height: 160,
                        width: 175,
                      ),

                       Container(
                        height: 100,
                        width: 175,
                        color: const Color(0xff0FFE500),
                      ),

                    ],
                    ),

                    Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                      Container(
                        color: const Color(0XFF07752FE),
                        height: 90,
                        width: 175,
                      ),

                       Container(
                        color: const Color(0xff00E00AC),
                        height: 90,
                        width: 175,
                      ),

                        Container(
                        color: const Color(0xff07752fe),
                        height: 90,
                        width: 175,
                      ),
                    ],)
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}