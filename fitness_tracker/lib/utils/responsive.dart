import 'package:flutter/material.dart';

class Responsive {
  //methos  to check whether the device is a mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  //methos  to check whether the device is a Tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width < 1100;

  //methos  to check whether the device is a Desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
