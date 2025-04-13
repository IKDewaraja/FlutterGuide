import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final Color iconBgColor;
  final IconData iconName;
  final Color iconColor;

  const IconCard({super.key,
   required this.iconBgColor,
    required this.iconName,
     required this.iconColor,
     });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: iconBgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Icon(
          iconName,
          size: 100.0,
          color: iconColor,
        ),),
    );
  }
}
