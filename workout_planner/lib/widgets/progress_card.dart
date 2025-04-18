import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;

  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();
    //0.3*100 =30

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kMainColor, kMainDarkBlue],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Proteins,Fats & \n Carbohydreates",
              style: TextStyle(
                fontSize:25,
                fontWeight: FontWeight.w600,
                color: kMainWhiteColor,
              ),
            ),

            SizedBox(height: 30),

            LinearProgressIndicator(
              value: widget.progressValue,
              backgroundColor: kMainDarkBlue,
              valueColor: AlwaysStoppedAnimation(kMainWhiteColor),
              color: kMainWhiteColor,
              minHeight: 15,
              borderRadius: BorderRadius.circular(100),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              _buildTag(
                 "Done",
                  done.toString()
                  ),

                  _buildTag(
                 "Total",
                 widget.total.toString()
                  ),
                  ]
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String title, String value) {
    return Column(
      children: [
        Text(
          title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: kMainWhiteColor,
            )
            ),
             SizedBox(height: 5),

             Text(
              value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: kMainWhiteColor,
            )
            ),
        ]
        );
  }
}
