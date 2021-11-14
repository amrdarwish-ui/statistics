import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PieChartContent extends StatelessWidget {
  const PieChartContent({
    Key? key,
    required this.pieChartSectionData,
  }) : super(key: key);
  final List<PieChartSectionData> pieChartSectionData;

  @override
  Widget build(BuildContext context) {
    return PieChart(PieChartData(
      sections: pieChartSectionData,
      pieTouchData: PieTouchData(enabled: true),
    ));
  }
}
