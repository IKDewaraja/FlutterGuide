import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student_management_system/pages/create_page.dart';
import 'package:student_management_system/pages/delete_page.dart';
import 'package:student_management_system/pages/read_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int selectedIndex = 0;

   List screens = [
    CreatePage(),
     ReadPage(),
    DeletePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Create'),
        BottomNavigationBarItem(icon: Icon(Icons.read_more), label: 'Read'),
        BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'Delete'),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      ),
    );
  }
}