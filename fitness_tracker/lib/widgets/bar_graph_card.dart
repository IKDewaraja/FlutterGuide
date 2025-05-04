
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:fitness_tracker/constants/colors.dart';

import 'package:fitness_tracker/widgets/custom_card.dart';

import 'package:fitness_tracker/data/bar_graph_data.dart';
import 'package:fitness_tracker/models/graph_model.dart';


class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {


    //BAR GRAPH DARA
    final  barGraphData =BarGraphData();
  final bool isMobile = Responsive.isMobile(context);

    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),


      itemCount: barGraphData.data.length,

      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(


        crossAxisCount: isMobile ? 2 : 3,
        childAspectRatio: 5/4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),

      // Number of items in the grid
      itemBuilder: (context, index) {
     
        return CustomCard(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(barGraphData.data[index].label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: greyColor,
                  ),
                ),
              ),

              
           //bar graph
           SizedBox(height: 12,
           ),


           Expanded(
            child: BarChart(
            BarChartData(
              barGroups: _chartGroups(

                color: barGraphData.data[index].color,
                points: barGraphData.data[index].graph,
              ),

              borderData: FlBorderData(border: Border(), ),
              titlesData: FlTitlesData(

                //remove the right titles
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false),
                ),


                //remove the left titles
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                    ),
                ),

                //remove the top titles
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),

                //remove the bottom titles
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (double value,TitleMeta  meta ){

                      return Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(barGraphData.label[value.toInt()],
                          style: const TextStyle(
                            fontSize: 11,
                            color: greyColor,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      );

                    }
                  ),
                ),

            
              )



           ),
           ),
           ),

            ],
          ),
        );
      },
    );
  }

  //list

  List <BarChartGroupData> _chartGroups(
    {
      required List <GraphModel> points,
      required Color color,
    }
  ){

    return points.map((point)  => BarChartGroupData(
      x:point.x.toInt(), 


      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: point.y,
          width: 20,
          // ignore: deprecated_member_use
          color: color.withOpacity(point.y.toInt() > 5 ? 1 : 0.4), //opacity of the color

          //radius of the bars
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),

          )),
        
      ]
      )) .toList();

  }


}