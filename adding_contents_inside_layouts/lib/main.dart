import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(


        appBar: AppBar(
          backgroundColor: const Color(0XFF9E00FF),
          ),


          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


               Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                color: const Color(0XFF80FFD3),
                ),
                 padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             
              children:[
                Text(
                  "Flutter is an open-source",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                         fontWeight: FontWeight.w700,
                  ),
      
                ),


                SizedBox(height: 5.0),


                Text(
                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2010.",
                      style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                         fontWeight: FontWeight.w400,
                  ),
                

                ),
              ]
            ),
          ),

                 Container(
                width: double.infinity,
                height: 165,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                color: const Color(0XFFFFE000),
                ),
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            
           child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                      "Flutter is an open-source",
                      style: TextStyle(
                        fontSize:20,
                        color: Colors.black,
                             fontWeight: FontWeight.w700,
                      ),
                  
                    ),

                    Icon(
                      Icons.bookmark,
                      color: Colors.black,
                      size: 20.0,
                     
                    ),
              ],
            ),


                SizedBox(height: 5.0),


                Text(
                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2010.",

               style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                         fontWeight: FontWeight.w400,
                  ),
                

                ),
            ],
           ),
            
               ),



                Container(
                width: double.infinity,
                height: 165,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                color: const Color(0XFFFFE000),
                ),
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            
           child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
                Text(
                      "Flutter is an open-source",
                      style: TextStyle(
                        fontSize:20,
                        color: Colors.black,
                             fontWeight: FontWeight.w700,
                      ),
                  
                    ),

           
          
              

                SizedBox(height: 5.0),


                Text(
                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2010.",

               style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                         fontWeight: FontWeight.w400,
                  ),
                

                ),
            ],
            
           ),
            
               ),
            ]),
          ),
        ),
    );
  }
}
