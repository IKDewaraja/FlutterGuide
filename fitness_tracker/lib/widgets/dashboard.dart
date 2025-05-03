import 'package:fitness_tracker/widgets/header_widget.dart';
import 'package:flutter/material.dart';


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
        
      
      
      ],
      ),
    ),
    );
  }
}