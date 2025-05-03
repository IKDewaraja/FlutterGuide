import 'package:fitness_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final Widget child;      //required (non-nullable)
  final Color? color;  //not required (nullable)
  final EdgeInsetsGeometry? padding;  //not required (nullable)


  const CustomCard({
    super.key,
  
    required this.child,
    this.color = cardBgColor,
    this.padding = const EdgeInsets.all(10),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? cardBgColor,
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(12),
        child: child,
      ),
    );
  }
}