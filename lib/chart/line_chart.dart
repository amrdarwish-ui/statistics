import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LineChartContent extends StatelessWidget {
  final double maxY;
  final double maxX;
  final double minY;
  final List<LineChartBarData> lineChartBarData;
  const LineChartContent(
      {Key? key,
      required this.maxY,
      required this.maxX,
      required this.minY,
      required this.lineChartBarData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          minX: 1,
          minY: minY,
          maxX: maxX,
          maxY: maxY,
          lineBarsData: lineChartBarData),
    );
  }
}
