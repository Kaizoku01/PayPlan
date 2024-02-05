import 'package:flutter/material.dart';
import 'package:pay_plan/common/theme/app_color_scheme.dart';
import 'package:pay_plan/common/theme/app_text_theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphClass extends StatelessWidget {
  const GraphClass({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      backgroundColor: PayPlanColorScheme.bg1Theme(context),
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        majorTickLines: const MajorTickLines(width: 0),
        axisLine: const AxisLine(color: Colors.black, width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        labelStyle: PayPlanTextTheme.appTextTheme(
                PayPlanColorScheme.font1Theme(context), context)
            .bodySmall,
      ),
      primaryYAxis: NumericAxis(
        isVisible: false,
        axisLine: const AxisLine(color: Colors.black, width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        maximum: 100,
        minimum: 0,
        labelStyle: PayPlanTextTheme.appTextTheme(
                PayPlanColorScheme.font1Theme(context), context)
            .bodySmall,
      ),
      series: [
        ColumnSeries<ChartData, String>(
          dataSource: data,
          xValueMapper: (ChartData data, _) => data.day,
          yValueMapper: (ChartData data, _) => data.money,
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(10),
          pointColorMapper: (ChartData data, _) => data.color,
          dataLabelSettings: DataLabelSettings(
              isVisible: true,
              textStyle: PayPlanTextTheme.appTextTheme(
                      PayPlanColorScheme.font1Theme(context), context)
                  .bodySmall),
        )
      ],
    );
  }
}

List<ChartData> data = [
  ChartData('Sun', 26, const Color(0xffC7F4A5)),
  ChartData('Mon', 35, const Color(0xffFBB1C3)),
  ChartData('Tues', 28, const Color(0xffB6BBFE)),
  ChartData('Wed', 34, const Color(0xffC7F4A5)),
  ChartData('Thurs', 32, const Color(0xffFBB1C3)),
  ChartData('Fri', 14, const Color(0xffB6BBFE)),
  ChartData('Sat', 50, const Color(0xffC7F4A5)),
];

class ChartData {
  ChartData(this.day, this.money, this.color);

  final String day;
  final double money;
  final Color? color;
}
