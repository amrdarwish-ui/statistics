import 'package:dims_config/dims_config.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:statistics/chart/bar_chart.dart';
import 'package:statistics/chart/line_chart.dart';
import 'package:statistics/chart/pie_chart.dart';
import 'package:statistics/models/bar_data_model.dart';
import 'package:statistics/models/line_data_model.dart';
import 'package:statistics/models/pie_data_model.dart';
import 'package:statistics/views/chart_view_computer.dart';
import 'package:statistics/views/chart_view_mobile.dart';
import 'package:statistics/views/chart_view_tablet.dart';

class ChartView extends StatelessWidget {
  ChartView(
      {Key? key,
      required this.chartNum,
      required this.title,
      required this.backgroundColor,
      required this.titleColor,
      this.lineColor,
      this.pieDataList,
      this.maxY,
      this.minY,
      this.maxX,
      this.barDataList,
      this.lineDataList}) {
    addPieChartData();
  }
  final int chartNum;
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final Color? lineColor;
  final double? maxY;
  final double? maxX;
  final double? minY;
  List<PieDataModel>? pieDataList;
  List<BarDataModel>? barDataList;
  List<LineDataModel>? lineDataList;
  List<PieChartSectionData> piechartdata = [];
  List<BarChartGroupData> barChartGroupData = [];
  List<FlSpot> flSpotData = [];
  List<LineChartBarData> scatterChartBarData = [];

  void addPieChartData() {
    switch (chartNum) {
      case 0:
        for (var i in pieDataList!) {
          piechartdata.add(
            PieChartSectionData(
              value: i.value,
              title: i.title,
              color: Color(int.parse('0xff${i.color}')),
            ),
          );
        }
        break;
      case 1:
        for (var i in barDataList!) {
          barChartGroupData.add(BarChartGroupData(x: i.x, barRods: [
            BarChartRodData(y: i.y, colors: i.colors, width: i.width)
          ]));
        }
        break;
      case 2:
        for (var i in lineDataList!) {
          flSpotData.add(FlSpot(i.x, i.y));
        }
        break;
      case 3:
        for (var i in lineDataList!) {
          scatterChartBarData.add(LineChartBarData(
              colors: [lineColor!], spots: [FlSpot(i.x, i.y)]));
        }
        break;
    }
  }

  Widget getChart() {
    switch (chartNum) {
      case 0:
        return PieChartContent(
          pieChartSectionData: piechartdata,
        );
      case 1:
        return BarChartContent(
          barChartGroupData: barChartGroupData,
          maxY: maxY!,
        );
      case 2:
        return LineChartContent(
          minY: minY!,
          maxX: maxX!,
          maxY: maxY!,
          lineChartBarData: [
            LineChartBarData(
                colors: [lineColor!], isCurved: true, spots: flSpotData)
          ],
        );
      case 3:
        return LineChartContent(
            minY: minY!,
            maxX: maxX!,
            maxY: maxY!,
            lineChartBarData: scatterChartBarData);
      default:
        return const Center(
          child: Text(
              "the number of charts is form 0 to 3 please change chartNum\n 0-Pie chart\n1-bar chart\n2-line chart\n 3-scatter chart"),
        );
    }
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
