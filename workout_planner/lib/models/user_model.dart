

import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
   int totalExerciseCompleted=0;
  int totalequipmentHandOvered=0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  //constructor

  User(
    {
      required this.userId, 
      required this.fullName,
       required this.gender,
        required this.address, 
        required this.age, 
        required this.description, 
        required this.exerciseList,
         required this.equipmentList, 
         required this.favExerciseList,
          required this.favEquipmentList,
          //  required int totalequipmentHandOvered, 
          //  required int totalExerciseCompleted,  
          }
          );
}
