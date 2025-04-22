

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
        
          }
          );

          //methods

          //method to add new exercise to the list
          void addExercise(Exercise exercise) {
            exerciseList.add(exercise);
          }

          //method to remove  a exercise from the list
          void removeExercise(Exercise exercise) {
            exerciseList.remove(exercise);
          }

          //method to add fav exercise to the list
          void addFavExercise(Exercise exercise) {
            favExerciseList.add(exercise);
          }

          //method to remove fav exercise from the list
          void removeFavExercise(Exercise exercise) {
            favExerciseList.remove(exercise);
          }

          //method to add new equipment to the list
        
          void addEquipment(Equipment equipment) {
            equipmentList.add(equipment);
          }

          //method to remove  a equipment from the list
          void removeEquipment(Equipment equipment) {
            equipmentList.remove(equipment);
          }

          //method to add fav equipment to the list
          void addFavEquipment(Equipment equipment) {
            favEquipmentList.add(equipment);
          }

          //method to remove fav equipment from the list
          void removeFavEquipment(Equipment equipment) {
            favEquipmentList.remove(equipment);
          }

}
