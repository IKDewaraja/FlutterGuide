import 'package:flutter/material.dart';



import 'package:flutter_blocks_app/widgets/small_container.dart';
import 'package:flutter_blocks_app/widgets/large_container.dart';
import 'package:flutter_blocks_app/widgets/icon_card.dart';
import 'package:flutter_blocks_app/widgets/social_icon_box.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF9E00FF),
        leading: Icon(Icons.menu, size: 30.0, color: Colors.white),
        title: Text(
          'Flutter Blocks App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          child: Column(
            children: [
              Text(
                "User Interfaces with Flutter",
                style: TextStyle(fontSize: 25.0, color: Colors.white,fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15.0),
        
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), 
                  color: Color(0xFF06FFA5),
                  ),
        
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(  "In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree.Each widget in the tree corresponds to a specific UI component, and the arrangement of these widgets defines the layout and appearance of the app.      By understanding the widget tree,   you can efficiently organize your UI components and create a seamless user experience.",
                    style: TextStyle(
                      fontSize: 18.0, 
                      color: Color(0xff383636),
                      fontWeight: FontWeight.w500
                      )
                           
                                ),
                  ),
                ),
                
                SizedBox(height: 20.0),
        
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallContainer(
                    title: "open-source",
                    description: "Flutter is an open-source UI (User Interface) software development kit created by Google.",
                  ),
                  SmallContainer(
                    title: "cross-platform",
                    description: "Flutter allows developers to create applications for multiple platforms using a single codebase.",
                  ),
                  
         
                     
                    ]),

                        SizedBox(height: 20.0),

                    LargeContainer(
                      title: "open-source",
                      description:"Flutter is an open-source UI (User Interface) software development kit created by Google.Flutter is an open-source UI (User Interface) software development kit created by Google." ,
                    ),

                    SizedBox(height: 20.0),

                    LargeContainer(
                      title: "Widget Tree",
                      description:"In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree.Each widget in the tree corresponds to a specific UI component." ,
                    ),

                    SizedBox(height: 20.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      IconCard(
                        iconName: Icons.person_pin_circle,
                        iconBgColor: Color(0xFF06FFA5),
                        iconColor: Color(0xFF333333),
                      ),


                       IconCard(
                        iconName: Icons.alarm,
                        iconBgColor: Color(0xffCC00ff),
                        iconColor: Colors.white,
                          ),

                    ],
                    ),
                     SizedBox(
                      height: 20.0
                      ),

                      Divider(
                        color: Color(0xff3b3636),
                    
                      ),

                       SizedBox(
                      height: 20.0
                      ),

                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Flutter Blocks App",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                              
                            ),

                            SizedBox(height: 10.0),

                                Text(
                              "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015 and has gained significant popularity among developers due to its fast development cycle, expressive and flexible UI components, and excellent performance.",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xff383636),
                                fontWeight: FontWeight.w400
                              ),
                              
                            ),


                    SizedBox(height: 20.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  SocialIconBox(
                                    socialIcon: 
                                    Icons.facebook,
                                  ),
                              
                                        SocialIconBox(
                                    socialIcon: 
                                    Icons.facebook,
                                                                   ),
                              
                                        SocialIconBox(
                                    socialIcon: 
                                    Icons.facebook,
                                  ),
                              
                                        SocialIconBox(
                                    socialIcon: 
                                    Icons.facebook,
                                  ),
                              
                                        SocialIconBox(
                                    socialIcon: 
                                    Icons.facebook,
                                  ),
                                  
                                                  
                                ],
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
