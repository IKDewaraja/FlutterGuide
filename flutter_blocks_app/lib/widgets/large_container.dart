import 'package:flutter/material.dart';

class LargeContainer extends StatelessWidget {
  final String title;
  final String description;
  const LargeContainer({super.key,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:130.0,
      decoration: BoxDecoration(
         color: Color(0xFFFFE500),
        borderRadius: BorderRadius.circular(10.0),
    
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             title,
              style: TextStyle(
          
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            ),

           Text(
            description,
            style: TextStyle(
          
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              // ignore: deprecated_member_use
              color: Color(0xff383636).withOpacity(0.84),


              
            ),
            ),
           
          ],
        
        ),
      ),
    );
  }
}