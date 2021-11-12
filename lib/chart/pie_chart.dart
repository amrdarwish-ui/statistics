import 'package:dims_config/dims_config.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:statistics/chart_data/pie_chart_data.dart';

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
