import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/widgets/pie_chart.dart';
import 'package:fitness_tracker/widgets/scheduled_widget.dart';
import 'package:fitness_tracker/widgets/summary_details.dart';

import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [

          PieChartCard(),
        
        
          Text(
            'Summary',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: greyColor,
            ),
          ),

            SizedBox(
            height: 16,
      
            ),

                  SummaryDetails(),

                  SizedBox(
                    height: 30,
                  ),

                  ScheduledWidget(),



                  
        ],
      ),
    );
  }
}
