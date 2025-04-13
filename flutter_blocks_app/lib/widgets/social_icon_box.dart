import 'package:flutter/material.dart';

class SocialIconBox extends StatelessWidget {
  final IconData socialIcon;
  const SocialIconBox({
    super.key,
    required this.socialIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
       border: Border.all(
        color: Color(
          
          0xff06FFA5
          ),
          width: 3.0,

      
         
       
        ),
     
      ),
      child: Center(
        child: Icon(
   socialIcon,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }
}