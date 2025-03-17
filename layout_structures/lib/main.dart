import 'package:flutter/material.dart';

//layout 01

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layouts",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF9E00FF),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: const Color(0XFF06FFA5),
                  height: 350,
                  width: double.infinity,
                ),
                Container(
                  color: const Color(0XFFFFE500),
                  height: 350,
                  width: double.infinity,
                ),
              ]),
        ),
      ),
    );
  }
}

