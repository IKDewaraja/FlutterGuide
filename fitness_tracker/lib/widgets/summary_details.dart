import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(color: limeColor,
     child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      buildDetails(
        'Cal',
        '285',
      ),
      buildDetails(
        'Steps',
        '10232',
      ),

      buildDetails(
        'Distance',
        '5.2 km',
      ),
      buildDetails(
        'Sleep',
        '7.5 hrs',
      ),


        ],
      ));
  }

  Widget buildDetails(String key, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(key,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
             color: secondaryColor,
          ),
          ),

          SizedBox(
            height: 2,
          ),

          Text(value,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
             color: greyColor,
          )),

      ],
    );
  }
}
