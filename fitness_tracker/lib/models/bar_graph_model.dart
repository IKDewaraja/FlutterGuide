import 'package:fitness_tracker/models/graph_model.dart';
import 'package:flutter/widgets.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  BarGraphModel({
    required this.label,
    required this.color,
    required this.graph,
  });
}
