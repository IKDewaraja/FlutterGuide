import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/widgets/add_exercise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  //import user from user data
  final userData = user;

  //exercise list
  final exerciseList = ExerciseData().exerciseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${userData.fullName}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Lets Add Some Workout and Equipment for today!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "All Exercises",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kMainBlackColor,
                  ),
                ),
                SizedBox(height: 15),

                //list view to scroll horizontally
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.332,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    itemCount: exerciseList.length,

                    itemBuilder: (context, index) {
                      Exercise exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        exerciseImageUrl: exercise.exerciseImageUrl,
                        noOfMinutes: exercise.noOfMinutes,
                        isAdded: userData.exerciseList.contains(exercise),

                        //add exercise
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                           //   print(userData.exerciseList.length);
                            } 
                            
                            else {
                              userData.addExercise(exercise);

                          //    print(userData.exerciseList.length);
                            }
                          });
                        },

                        //fav exercise
                        
                         toggleAddFavExercise: () { 
                          setState(() {
                            
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeFavExercise(exercise);
                         //     print(userData.favExerciseList.length);
                            } 

                            else {
                              userData.addFavExercise(exercise);
                           //   print(userData.favExerciseList.length);
                            }
                          });
                          }, 
                          isFavourited: userData.favExerciseList.contains(exercise),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
