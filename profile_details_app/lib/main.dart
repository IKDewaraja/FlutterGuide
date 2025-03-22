import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
  ));
}

int points = 0;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

//floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            setState() {
          points +=1;
        };
        },

        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 205, 190, 190),
      ),

      appBar: AppBar(
        title: const Text("My Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6I7qsxK0RGNrxV49H3t67mUpUPXfRLQZZbg&s"),
              ),
            ),

            Divider(
              height: 60,
              color: Colors.black,
              thickness: 2,
            ),

            Text(
              "Name",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "John",
            ),

            SizedBox(height: 20),

            Text(
              "Email",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Row(children: [Icon(Icons.email), Text("abc@gmail.com")]),

            SizedBox(height: 20),

            Text(
              "Points",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Icon(Icons.star),
              SizedBox(width: 20),

            ])
          ],
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: {
//       '/': (context) => HomeScreen(),
//       '/second': (context) => HomeScreen(),
//     },
//     home: HomeScreen(),
//   ));
// }

// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),

//       body: Column(
//         children: [
//           Text("HomePage"),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.pushNamed(context, '/second');
//             },
//             child: Text('Go to Second Screen'),
//           ),
//         ],
//       ),
//     );
  

  
//   }
// }
