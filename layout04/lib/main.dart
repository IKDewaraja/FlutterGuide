import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//variables
final double borderRadius = 10;
final double circleWidthAndHeight = 80;
final double containerHeight = 150;
final double containerWidth = 175;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Layout 04",
      home: Scaffold(
        backgroundColor: const Color(0xff1E1E1E),
        appBar: AppBar(
          backgroundColor: const Color(0XFFFFE500),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: 

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          
            children: [
              //row 1
          
            SizedBox(
              height: containerHeight,
              child: Row(
                 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                 
                        
                        Container(
                          height: 150,
                          width: containerWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: const Color(0XFF06FFA5),
                          ),
                        ),
                              
                              
                              
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                       
                          children: [
                            Container(
                                   decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(borderRadius),
                             color: const Color(0XFF06FFA5),
                      ),
                              height: 70,
                              width:containerWidth,
                            ),
                              
                              
                            Container(
                                   decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(borderRadius),
                                 color: const Color(0XFFFFE500),
                         ),
                              height:70,
                              width:containerWidth, 
                            ),
                          
                          ],
                        )
                      ],
                    
                    ),
            ),
             
           
          
          
          
          
          
          
            Container(
                    height: containerHeight/2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: const Color(0XFFCC00FF),
                    ),
                  ),
          
          
            Container(
                   height: containerHeight/2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      color: const Color(0XFF06FFA5),
                    ),
                  ),
          
          
        
          //row 2
                 SizedBox(
                  height: containerHeight *2 ,
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Container(
                          height: containerHeight*2,
                          width: containerWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                            color: const Color(0xff0ffe500),
                          ),
                        ),
                              
                              
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                          children: [
                            Container( decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                              color: const Color(0XFF7752FE),
                            ),
                                height: 90,
                                width: containerWidth,
                            ),
                              
                              
                            Container(
                               decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                              color: const Color(0XFF0FF9900),
                               ),
                                height: 90,
                                width: containerWidth,
                            ),
                              
                              
                            Container(
                               decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(borderRadius),
                              color: const Color(0XFF07752FE),
                               ),
                                height: 90,
                                width: containerWidth,
                            ),
                          ],
                              
                        ),
                      ],
                              
                    ),
                 ),
              
           
          
          
          
          
          
          
          
          //row 3
             
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            
                    children: [
                      Container(
                         
                             decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                           color: const Color(0XFFCC00FF),
                          ),
                          
                          
                              height:circleWidthAndHeight,
                              width:circleWidthAndHeight,
                            
                      ),
                            
                         Container(  
                     
                              height:circleWidthAndHeight,
                              width:circleWidthAndHeight,
                                     decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                               color: const Color(0XFFFFE500),
                          ),
                            
                      ),
                            
                            
                         Container(
                        
                              height:circleWidthAndHeight,
                              width:circleWidthAndHeight,
                                     decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                            color: const Color(0XFF06FFA5),
                          ),
                            
                            
                      ),
                            
                            
                         Container(
                            
                              height:circleWidthAndHeight,
                              width:circleWidthAndHeight,
                                     decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          
                         color: const Color(0XFF9E00FF),
                          ),
                            
                      ),
                            
                    ],
                            
                  ),
                ),
           
          
            ],
          ),
        ),

      ),
    );
  }
}