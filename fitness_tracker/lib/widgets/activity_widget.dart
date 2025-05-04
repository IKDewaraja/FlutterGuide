import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/health_details_data.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});

  

  @override
  Widget build(BuildContext context) {

    final healthmodelData = HealthDetails();
  final bool isMobile = Responsive.isMobile(context);

    return GridView.builder(
      itemCount: healthmodelData.healthDetails.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomCard(child:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          
            Image.asset(
            healthmodelData.healthDetails[index].icon,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 4),
              child: Text(
                healthmodelData.healthDetails[index].value  ,
                style: const TextStyle(
                  color: secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),


            Text(
                healthmodelData.healthDetails[index].title  ,
                style: const TextStyle(
                  color: greyColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),

          ],
        ));
      },
    );
  }
}
