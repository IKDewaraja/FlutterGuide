import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/scheduled_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ScheduledWidget extends StatelessWidget {
  const ScheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduledData =ScheduledData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Scheduled",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: secondaryColor,
            ),
            ),

            SizedBox(
              height: 12,
            ),

            //show the scheduled data using a for loop
            for(var index=0 ; index< scheduledData.scheduledTasks.length; index++)
            Padding(padding: 
            EdgeInsets.symmetric(vertical: 15,
            ),
            child: CustomCard(
              color: limeColor,
              child: 
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    scheduledData.scheduledTasks[index].title,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: secondaryColor,
                    ),
                    
                  ),
                  
                  
                  Text(
                    scheduledData.scheduledTasks[index].date,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: greyColor,
                    ),
                    
                  ),
                ],
              ),

                Icon(
              
              Icons.alarm,
              color: secondaryColor,
            ),


            ],
            ),
           
            ),

           
            ),

           

      ],
    );
  }
}