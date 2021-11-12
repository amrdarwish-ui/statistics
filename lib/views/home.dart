import 'package:flutter/material.dart';
import 'package:statistics/models/chart_data_model.dart';
import 'package:statistics/views/chart_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChartView(
        chartNum: 0,
        title: 'Chart',
        backgroundColor: Colors.grey,
        titleColor: Colors.white,
        dataList: [
          ChartDataModel(title: '30%', value: 30, color: 'a2663e'),
          ChartDataModel(title: '15%', value: 15, color: '545481'),
          ChartDataModel(title: '35%', value: 35, color: '567116'),
          ChartDataModel(title: '20%', value: 20, color: '448421'),
        ],
      ),
    );
  }
}
