import 'package:flutter/material.dart';

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

      body: Padding(
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
                Container(
                  width: 180.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF9E00FF),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("open-source",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    
                    
                      SizedBox(height: 10.0),
                      
                      Text("Flutter is an open-source UI (User Interface) software development kit created by Google.", style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ],),
                  )
                  ), 






                    Container(
                  width: 180.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF9E00FF),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("open-source",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    
                    
                      SizedBox(height: 10.0),
                      
                      Text("Flutter is an open-source UI (User Interface) software development kit created by Google.", style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ],),
                  )
                  ),
                  ]),

            Container(),
            Container(),

            Row(children: [Container(), Container()]),
          ],
        ),
      ),
    );
  }
}
