import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';

User user = User(
  userId: "123456",
  fullName: "John Doe",
  age: 30,
  gender: "Male",
  address: "123 Main St, City, Country",
  description: "Fitness enthusiast",
  // totalExerciseCompleted: 0,
  // totalequipmentHandOvered: 0,


  
 exerciseList: 
 [
    Exercise(
      exerciseName: "Push-ups",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinutes: 15,
      id: 0,
      completed: false,
    ),
    Exercise(
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutes: 20,
      id: 1,
      completed: false,
    ),
  ],

  
  equipmentList: [
    Equipment(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/images/equipments/checklist.png",
      noOfMinutes: 20,
      handOvered: false,
      noOfCalories: 150,
    ),
    Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 60,
      handOvered: false,
      noOfCalories: 300,
    ),
  ],

  
  favExerciseList: [
    Exercise(
      exerciseName: "Plank",
      exerciseImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 30,
      id: 2,
      completed: false,
    ),
  ],

  
  favEquipmentList: [
    Equipment(
      id: 3,
      equipmentName: "Dumbbells",
      equipmentDescription: "Weights used for strength training.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 30,
      handOvered: false,
      noOfCalories: 200,
    ),
  ],


);
