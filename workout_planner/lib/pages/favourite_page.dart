import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  //Date and Time Formatters
  final DateFormat formatter = DateFormat('EEEE,MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //User Data
  final userData = user;
  @override
  Widget build(BuildContext context) {
    String formattedDate = formatter.format(DateTime.now());
    String formattedDay = dayFormat.format(DateTime.now());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " $formattedDate,  $formattedDay",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColor,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  userData.fullName,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: kMainBlackColor,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  "Here are all your favourited workouts",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: kMainColor,
                  ),
                ),

                SizedBox(height: 20),

                //exercise grid view
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                    childAspectRatio: 16/17,
                  ),
                  itemCount:userData.favExerciseList.length, 
                  itemBuilder: (context, index) {
                    Exercise favExercise = userData.favExerciseList[index];
                    return Card(
                      color: kCardBgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Column(children: [
                          Text(favExercise.exerciseName,
                          style: TextStyle(fontSize: 17,
                        fontWeight: FontWeight.bold),
                          ),

                          SizedBox(height: 10),


                          Image.asset(
                            favExercise.exerciseImageUrl,
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                          SizedBox(height: 10),

                          Text("${favExercise.noOfMinutes.toString()} Min Workout",
                          style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: kMainPinkColor),
                          ),
                          ]
                          
                          ),
                      ),
                    );
                  },
                ),



     

                 SizedBox(height: 10),

                Text(
                  "Here are all your favourited Equipments",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: kMainColor,
                  ),
                ),

                SizedBox(height: 20),

                //equipment grid view
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                    childAspectRatio: 16/23,
                  ),
                  itemCount:userData.favEquipmentList.length, 
                  itemBuilder: (context, index) {
                    Equipment favEquipment = userData.favEquipmentList[index];
                    return Card(
                      color: kCardBgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Column(children: [
                          Text(favEquipment.equipmentName,
                          style: TextStyle(fontSize: 17,
                        fontWeight: FontWeight.bold),
                          ),

                          SizedBox(height: 10),


                          Image.asset(
                            favEquipment.equipmentImageUrl,
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        
                        
                          SizedBox(height: 5),

                          Text("${favEquipment.equipmentDescription} ",
                          style: TextStyle(fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: kSubtitleColor
                        ),
                        textAlign: TextAlign.center,
                          ),
                          ]
                          
                          ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
