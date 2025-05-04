import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fitness_tracker/data/line_chart_data.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: greyColor,
            ),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                //handles the touch behaviour
                lineTouchData: const LineTouchData(
                  handleBuiltInTouches: true,
                ),
                // gridData: const FlGridData(show: false),

                //for the titles in the graph
                titlesData: FlTitlesData(
                  //remove the right titles
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        //here the value is a double we have to convet to int use toInt()
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                fitInside: SideTitleFitInsideData.fromTitleMeta(meta),
                                meta: meta,
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: greyColor,
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,

                      //separation between the graph data and  the titiles
                      reservedSize: 40,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? Text(
                                data.leftTitle[value.toInt()].toString(),
                                style:  TextStyle(
                                  fontSize: 12,
                                  color: greyColor,
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                ),

                //this will remove the border
                borderData: FlBorderData(show: false),

                // this will draw the graph with the provided data
                lineBarsData: [
                  LineChartBarData(
                    color: sectionColor,

                    //width of the bar
                    barWidth: 3,

                    //below the bar we can add a gradient
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          // ignore: deprecated_member_use
                          sectionColor.withOpacity(0.5),
                          Colors.transparent
                        ],
                      ),
                    ),

                    // this will show the dot when the user hovered on the line graph
                    dotData:  FlDotData(show: false),
                    spots: data.spots,
                  )
                ],

                // how to draw the graph on the xy cartecean plane
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}