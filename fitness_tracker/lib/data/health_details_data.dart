import 'package:fitness_tracker/models/health_activity_model.dart';

class HealthDetails {
  final healthDetails = [
    HealthModel(
      icon: 'assets/icons/burn.png' ,
       value: '230', 
       title: 'Water Level '
       ),

    HealthModel(
      icon: 'assets/icons/steps.png' ,
       value: '7.84', 
       title: 'Miles Steps'
       ),

    HealthModel(
      icon: 'assets/icons/distance.png' ,
       value: '240m', 
       title: 'Covered distance'
       ),

    HealthModel(
      icon: 'assets/icons/sleep.png' ,
       value: '7h4m', 
       title: 'Sleep'
       ),
  ];
  
}
