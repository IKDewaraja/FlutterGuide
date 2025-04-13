import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {


  final String title;
  final String description;

  const SmallContainer({
   super.key,
   required this.title,
   required this.description,
   });

  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: 180.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFF9E00FF),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                        title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    
                    
                      SizedBox(height: 10.0),
                      
                      Text(
                        description,  
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                    ],),
                  )
                  );
  }
}