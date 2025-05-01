import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExerciseCompleted = 0;
  int totalequipmentHandOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  //constructor

  User({
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
  });

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

  //method to calculate the total minutes spent
  int calculateTotalMinutesSpent() {
    int totalMinutesSpent = 0;

    //loop through the exercise list and add the minutes spent to the total
    for (var exercise in exerciseList) {
      totalMinutesSpent += exercise.noOfMinutes;
    }

    //loop through the equipment list and add the minutes spent to the total
    for (var equipment in equipmentList) {
      totalMinutesSpent += equipment.noOfMinutes;
    }
    return totalMinutesSpent;
  }

  //method to mark an exercise as completed
  void markExerciseAsCompleted(int exerciseId) {
    final exercise = exerciseList.firstWhere(
      (exercise) => exercise.id == exerciseId,
    );

    exercise.completed = true;
    //remove the exercise from the list
    removeExercise(exercise);

    totalExerciseCompleted++;
  }

  //methos to mark as equipment as handed over
  void markAsHandovered(int equipmentId) {
    final equipment = equipmentList.firstWhere(
      (equipment) => equipment.id == equipmentId,
    );

    equipment.handOvered = true;
   
    //remove the equipment from the list
    removeEquipment(equipment);

    totalequipmentHandOvered++;
  }

  //method to calculate the total calories burned
  double calculateTotalCaloriesBurned() {
    double totalCaloriesBurned = 0.0;
    for (var equipment in equipmentList) {
      totalCaloriesBurned += equipment.noOfCalories;
    }

    //convert the total calories burned into a value between 0 and 1
    if(totalCaloriesBurned > 0 && totalCaloriesBurned <= 10) {
      totalCaloriesBurned = totalCaloriesBurned / 10;
    }
    if(totalCaloriesBurned > 10 && totalCaloriesBurned <= 100) {
      totalCaloriesBurned = totalCaloriesBurned / 100;
    }
    if (totalCaloriesBurned > 100 && totalCaloriesBurned <= 1000) {
      totalCaloriesBurned = totalCaloriesBurned / 1000;
    }

    
    return totalCaloriesBurned;


  }

}
