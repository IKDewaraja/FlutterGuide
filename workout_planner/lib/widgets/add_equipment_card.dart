import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';

class AddEquipmentCard extends StatefulWidget {


   final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinutes;
  final double noOfCalories;
  const AddEquipmentCard({
    super.key,
     required this.equipmentName,
      required this.equipmentDescription,
       required this.equipmentImageUrl,
        required this.noOfMinutes,
         required this.noOfCalories
         });

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom:20),
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kCardBgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: const Offset(0, 5),
          ),
        ],

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical:kDefaultPadding ,
          horizontal: kDefaultPadding*2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text(widget.equipmentName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kMainBlackColor,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                widget.equipmentImageUrl,
                fit: BoxFit.cover,
                width: 100,
              ),

              
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.equipmentDescription,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: kMainDarkBlue,
                  ),
                ),
                SizedBox(height: 10),
            
            
                 Text("Time: ${widget.noOfMinutes.toString()} min and ${widget.noOfCalories.toString()} calories burnt",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: kSubtitleColor,
                  ),
                ),
                
              ],
            ),
          )
            ],
          ),

          SizedBox(height: 30),

          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: kSubtitleColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Center(
                      child: IconButton(
                        onPressed: () {
                   
                        },
                        icon: Icon(
                           Icons.add,

                          color: kMainDarkBlue,
                          size: 30,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: kSubtitleColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Center(
                      child: IconButton(
                        onPressed: () {
                     
                        },
                        icon: Icon(
                            Icons.favorite_border,
                          color: kMainPinkColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}