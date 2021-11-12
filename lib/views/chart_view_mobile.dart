import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';

class ChartViewMobile extends StatelessWidget {
  const ChartViewMobile(
      {Key? key,
      required this.title,
      required this.backgroundColor,
      required this.titleColor,
      required this.chart})
      : super(key: key);
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final Widget chart;

  @override
  Widget build(BuildContext context) {
    DimsConfig dims = DimsConfig(context);
    return Scaffold(
      body: SizedBox(
        height: dims.deviceHeight,
        width: dims.deviceWidth,
        child: Center(
          child: Container(
            height: dims.deviceHeight * 0.5,
            width: dims.deviceWidth * 0.85,
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
            decoration: BoxDecoration(
              ///Constr
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: titleColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: chart)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
