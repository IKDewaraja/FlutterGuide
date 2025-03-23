import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        
        appBar: AppBar(
        backgroundColor: Color(0xFF9E00FF),
        leading: Icon(Icons.menu, size: 30.0,
         color: Colors.white,),
        title: Text( 'Flutter Blocks App',
         style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),
         ),
      ),



      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            Text("User Interfaces with Flutter",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),

       Container(
        child: Container(

          
        ),
       ),
       
             

             Row(
              children: [

               Container(
                child: Text(""),




               ),


               Container(



               ),

              ]
             
             ),

             Container(


             ),
             Container(


             ),


             Row(
              children: [
                    Container(

              ),


              Container(


              ),

              ]
          
             ),
        
          ]
        ),
      )
      ),
      
    );
  }
}