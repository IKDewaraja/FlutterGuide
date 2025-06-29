import 'package:flutter/material.dart';

import 'package:fitness_tracker/models/bar_graph_model.dart';
import 'package:fitness_tracker/models/graph_model.dart';


class BarGraphData {
  final data = [
    // First set of data
    BarGraphModel(
      label: "Calories Burned",
      color: Color.fromARGB(255, 51, 0, 253),
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 6),
      ],
    ),

    // Second set of data
    BarGraphModel(
      label: "Proteins",
      color: Color.fromARGB(255, 174, 0, 255),
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 9),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 6),
        GraphModel(x: 5, y: 7),
      ],
    ),

    // Third set of data
    BarGraphModel(
      label: "Carbs Intake",
      color: Color.fromARGB(255, 3, 247, 178),
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
    ),
  ];

  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
