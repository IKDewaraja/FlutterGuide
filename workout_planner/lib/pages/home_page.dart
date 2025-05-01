import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/pages/equipments_page.dart';
import 'package:workout_planner/pages/exercise_details_page.dart';
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

  //exercise and equipment data
  final exerciseList = ExerciseData().exerciseList;
  final equipmentList = EquipmentData().equipmentList;

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
                  progressValue: userData.calculateTotalCaloriesBurned(), 
                  total: 100),

                SizedBox(height: 20),

                Text(
                  "Todays's Activity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    //warmup card
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ExerciseDetailsPage(
                                  exerciseTitle: 'Warmup',
                                  exerciseDescription:
                                      "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot. It is simply defined in athletics terms as a gait in which at regular points during the running cycle both feet are off the ground. ",

                                  exerciseList: exerciseList,
                                ),
                          ),
                        );
                      },
                      child: GestureDetector(
                        child: ExerciseCard(
                          title: 'Warmup',
                          description: "see more... ",

                          imageUrl:
                              'assets/images/exercises/downward-facing.png',
                          onTap: () {},
                        ),
                      ),
                    ),

                    //equipment card
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => EquipmentDetailsPage(
                                  equipmentTitle: "Equipments",
                                  equipmentDescription:
                                      "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot. It is simply defined in athletics terms as a gait in which at regular points during the running cycle both feet are off the ground. ",
                                  equipmentList: equipmentList,
                                ),
                          ),
                        );
                      },

                      child: ExerciseCard(
                        title: 'Equipment',
                        description: 'see more...',
                        imageUrl: 'assets/images/equipments/dumbbells2.png',
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 13),

                //exercise card
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ExerciseDetailsPage(
                                  exerciseTitle: 'Exercise',
                                  exerciseDescription:
                                      "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot. It is simply defined in athletics terms as a gait in which at regular points during the running cycle both feet are off the ground. ",

                                  exerciseList: exerciseList,
                                ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        onTap: () {},
                        title: 'Exercise',
                        description: 'see more...',
                        imageUrl: 'assets/images/exercises/dragging.png',
                      ),
                    ),

                    //stretching card
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ExerciseDetailsPage(
                                  exerciseTitle: 'Stretching',
                                  exerciseDescription:
                                      "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot. It is simply defined in athletics terms as a gait in which at regular points during the running cycle both feet are off the ground. ",

                                  exerciseList: exerciseList,
                                ),
                          ),
                        );
                      },
                      child: ExerciseCard(
                        title: 'Stretching',
                        description: 'see more...',
                        imageUrl: 'assets/images/exercises/triangle.png',
                        onTap: () {},
                      ),
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
