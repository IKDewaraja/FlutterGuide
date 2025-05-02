import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker/constants/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required icon, required String title});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sideMenuData = SideMenuData();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: ListView.builder(
        itemCount: sideMenuData.sideMenu.length,
        itemBuilder: (context, index) {
          return _sideMenuList(SideMenuData(), index);
        },
      ),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenuData, int index) {
    return Row(
      children: [
        Icon(sideMenuData.sideMenu[index].icon, color: greyColor),

        Text(
          sideMenuData.sideMenu[index].title,
          style: const TextStyle(
            color: greyColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
