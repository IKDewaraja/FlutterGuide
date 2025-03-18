import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//variables
  final double smallContainerWidthAndHeight = 140;
  final double mainContainerWidthAndHeight = 350;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "layout06",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF9E00FF),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  color: const Color(0xFF06FFA5),
                  height: mainContainerWidthAndHeight,
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Flutter is an open-source",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            )),
                        const SizedBox(height: 10),
                        const Text(
                          "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF8E8FFA),
                              ),
                              height: smallContainerWidthAndHeight,
                              width: smallContainerWidthAndHeight,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xFF8E8FFA),
                              ),
                              height: smallContainerWidthAndHeight,
                              width: smallContainerWidthAndHeight,
                            ),
                          ],
                        )
                      ]),
                ),




                       const SizedBox(height: 15),




                Container(
                
                  width: double.infinity,
                  height:mainContainerWidthAndHeight *1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFE500),
                    
                  ),

                
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),


                  child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      
                       [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Flutter is an open-source",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                                ),


                            Icon(
                              Icons.badge,
                            ),
                          ],
                        ),

           const SizedBox(height: 15),

                        const Text(
                          "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),


                const SizedBox(height: 15),




                        Container(
                    padding:const EdgeInsets.all(20) ,
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF9E00FF),
                          ),

                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Flutter is an open-source",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    )
                                    ),


                                const SizedBox(height: 15),

                                const Text(
                                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),


                                       const SizedBox(height: 15),


                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: const Color(0XFF06FFA5),
                                      ),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: const Color(0XFF06FFA5),
                                      ),
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: const Color(0XFF06FFA5),
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
