import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarChartContent extends StatelessWidget {
  final List<BarChartGroupData> barChartGroupData;
  final double maxY;
  const BarChartContent({
    Key? key,
    required this.barChartGroupData,
    this.maxY = 16,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          maxY: maxY,
          barGroups: barChartGroupData,
          borderData: FlBorderData(
              border: const Border(
                  left: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black)))),
    );
  }
}
