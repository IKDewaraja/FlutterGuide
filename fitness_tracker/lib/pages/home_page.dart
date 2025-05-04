import 'package:flutter/material.dart';

import 'package:fitness_tracker/widgets/dashboard.dart';
import 'package:fitness_tracker/widgets/side_menu.dart';
import 'package:fitness_tracker/widgets/summary_widget.dart';
import 'package:fitness_tracker/utils/responsive.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer:!isDesktop ? SizedBox(
         width: MediaQuery.of(context).size.width * 0.8,
          child: SideMenu(),
        
      ) : null,

      endDrawer:  !isDesktop ? SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Summary(),
      ) : null,
      body: SafeArea(
        child: Row(
          children: [
            //side menu
            
            if(isDesktop)
            Expanded(
              flex: 2, 
              child: SizedBox(
                child: SideMenu(),
                
                ),
                ),

            //Dashboard
            Expanded(flex: 7, 
            child: SizedBox(child: Dashboard())),

            //summary section
            if(isDesktop)
            Expanded(flex: 3,
             child: SizedBox(
              child: Summary())),
          ],
        ),
      ),
    );
  }
}
