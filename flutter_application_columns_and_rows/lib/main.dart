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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Row and Column Widget"),
            backgroundColor: Colors.green,
          ),
          //column widget

          body: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            width: 300,
            height: 300,
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hello World",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "Dart is easy",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.restaurant,
                    size: 60,
                  )
                ]),
          ),

          //  Row widget
          // body: Container(
          //   color: Colors.purple,
          //   height: 400,
          //   width: 500,
          //   margin: const EdgeInsets.all(20),
          //   padding: const EdgeInsets.all(20),
          //   child: const Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //               children: [
          //   Text(
          //     "Flutter is easy",
          //     style: TextStyle(fontSize: 20),
          //   ),
          //   Text("Dart is easy", style: TextStyle(fontSize: 20)),
          //   Icon(Icons.alarm, size: 60)
          //               ],
          //             ),
          // ),
        ),
      ),
    );
  }
}
