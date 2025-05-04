import 'package:flutter/material.dart';

import 'package:fitness_tracker/widgets/activity_widget.dart';
import 'package:fitness_tracker/widgets/bar_graph_card.dart';
import 'package:fitness_tracker/widgets/header_widget.dart';
import 'package:fitness_tracker/widgets/line_chart.dart';





class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        SizedBox(height: 15 ),

        HeaderWidget(),

        SizedBox(height: 15 ),
        ActivityWidget(),

        SizedBox(height: 15 ),

      LineChartCard(),

        SizedBox(height: 15 ),

       BarGraphCard(),
         
          SizedBox(height: 30 ),
  


        
      
      
      ],
      ),
    ),
    );
  }
}