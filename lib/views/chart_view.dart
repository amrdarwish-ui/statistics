import 'package:dims_config/dims_config.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:statistics/chart/pie_chart.dart';
import 'package:statistics/models/chart_data_model.dart';
import 'package:statistics/views/chart_view_computer.dart';
import 'package:statistics/views/chart_view_mobile.dart';
import 'package:statistics/views/chart_view_tablet.dart';

class ChartView extends StatelessWidget {
  ChartView({
    Key? key,
    required this.chartNum,
    required this.title,
    required this.backgroundColor,
    required this.titleColor,
    required this.dataList,
  }) {
    addPieChartData();
  }
  final int chartNum;
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final List<ChartDataModel> dataList;
  List<PieChartSectionData> piechartdata = [];

  void addPieChartData() {
    for (ChartDataModel i in dataList) {
      piechartdata.add(
        PieChartSectionData(
          value: i.value,
          title: i.title,
          color: Color(int.parse('0xff${i.color}')),
        ),
      );
    }
  }

  Widget getChart() {
    if (chartNum == 0) {
      return PieChartContent(
        pieChartSectionData: piechartdata,
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return MultiDevice(
      mobile: ChartViewMobile(
        backgroundColor: backgroundColor,
        title: title,
        titleColor: titleColor,
        chart: getChart(),
      ),
      computer: ChartViewComputer(
        backgroundColor: backgroundColor,
        title: title,
        titleColor: titleColor,
        chart: getChart(),
      ),
      tablet: ChartViewTablet(
        backgroundColor: backgroundColor,
        title: title,
        titleColor: titleColor,
        chart: getChart(),
      ),
    );
  }
}
