import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/widgets/progress_card.dart';
import 'package:workout_planner/widgets/exercice_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Date and Time Formatters
  final DateFormat formatter = DateFormat('EEEE,MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //User Data
  final userData = user;



  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formattedDay = dayFormat.format(now);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " $formattedDate, $formattedDay",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColor,
                  ),
                ),

                Text(
                  userData.fullName,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: kMainBlackColor,
                  ),
                ),
                SizedBox(height: 20),

                ProgressCard(
                  progressValue: 0.4,
                  total: 100,
                ),

                        SizedBox(height: 20),

                   Text("Todays's Activity",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  
                    ),
                      ),

                      SizedBox(height: 10), 

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ExerciseCard(
                            title: 'Warmup',
                            description: 'see more...',
                            imageUrl: 'assets/images/exercises/downward-facing.png',
                            
                          ),

                              ExerciseCard(
                            title: 'Equipment',
                            description: 'see more...',
                            imageUrl: 'assets/images/equipments/dumbbells2.png',
                            
                          ),
                        ],
                      ), 
                      SizedBox(height: 13), 


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ExerciseCard(
                            title: 'Exercise',
                            description: 'see more...',
                            imageUrl: 'assets/images/exercises/dragging.png',
                            
                          ),

                              ExerciseCard(
                            title: 'Stretching',
                            description: 'see more...',
                            imageUrl: 'assets/images/exercises/triangle.png',
                            
                          ),
                        ],
                      ),  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
