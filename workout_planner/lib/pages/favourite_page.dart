import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';


class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  //Date and Time Formatters
  final DateFormat formatter = DateFormat('EEEE,MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //User Data
  final userData = user;
  @override
  Widget build(BuildContext context) {
    String formattedDate = formatter.format(DateTime.now());
    String formattedDay = dayFormat.format(DateTime.now());
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(
                    " $formattedDate,  $formattedDay",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: kSubtitleColor,
                    ),
                  ),
            
                  SizedBox(
                    height: 20,
                  ),
            
                  Text(
                    userData.fullName,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: kMainBlackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                     Text(
                    "Here are all your favourited workouts",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: kMainColor,
                    ),
                  ),

                   SizedBox(
                    height: 20,
                  ),

                  //exercise grid view
               

              ],
            ),
          )
        ),
      ),
    );
  }
}