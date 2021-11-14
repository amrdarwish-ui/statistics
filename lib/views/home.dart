import 'package:flutter/material.dart';
import 'package:statistics/models/bar_data_model.dart';
import 'package:statistics/models/line_data_model.dart';
import 'package:statistics/models/pie_data_model.dart';
import 'package:statistics/views/chart_view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChartView(
        chartNum: 4,
        title: 'Bar Chart',
        backgroundColor: Colors.orange,
        titleColor: Colors.white,
        maxY: 20,
        maxX: 5,
        minY: 1,
        lineColor: Colors.black,
        lineDataList: [
          LineDataModel(
            x: 1,
            y: 8,
          ),
          LineDataModel(
            x: 2,
            y: 12,
          ),
          LineDataModel(
            x: 3,
            y: 10,
          ),
          LineDataModel(
            x: 4,
            y: 6,
          ),
          LineDataModel(
            x: 8,
            y: 10,
          ),
          LineDataModel(
            x: 4,
            y: 3,
          ),
          LineDataModel(
            x: 7,
            y: 15,
          ),
          LineDataModel(
            x: 9.5,
            y: 18.5,
          ),
          LineDataModel(
            x: 6.5,
            y: 7,
          ),
          LineDataModel(
            x: 3.5,
            y: 2,
          ),
          LineDataModel(
            x: 4,
            y: 17,
          ),
          LineDataModel(
            x: 10,
            y: 10,
          ),
        ],
      ),
    );
  }
}
