import 'package:flutter/material.dart';

import 'package:workout_planner/pages/home_page.dart';
import 'package:workout_planner/pages/add_new_page.dart';
import 'package:workout_planner/pages/favourite_page.dart';
import 'package:workout_planner/pages/profile_page.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    AddNewPage(),
    FavouritesPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Workout Planner",
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex:_currentIndex, 
          onTap: (index){
            setState(() {
              _currentIndex = index;
              
            });
          },


          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add New",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),

               // Display the selected page based on the index 
        body: _pages[_currentIndex], 

      ),
    );
  }
}