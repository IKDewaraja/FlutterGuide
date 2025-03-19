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
      home: Scaffold(appBar: AppBar(
        backgroundColor: Color(0xFF9E00FF),
        leading: Icon(Icons.menu, color: Colors.white,),
        title: Text( 'Title', style: TextStyle(color: Colors.white),),
      ),),
      
    );
  }
}