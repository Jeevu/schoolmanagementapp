import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/widgets/bar_chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

final double maxGrade = 4;
final double aGrade = 3;
final double bGrade = 2;
final double cGrade = 1;
final double minGrade = 0;

final staticTicks = <charts.TickSpec<double>>[
  charts.TickSpec(minGrade),
  charts.TickSpec(cGrade),
  charts.TickSpec(bGrade),
  charts.TickSpec(aGrade),
  charts.TickSpec(maxGrade),
];

class BarChartGraph extends StatefulWidget {
  final List<BarChartModel> data;
  BarChartGraph(
    this.data,
  );
  @override
  _BarChartGraphState createState() => _BarChartGraphState();
}

class _BarChartGraphState extends State<BarChartGraph> {
  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
          id: "Grade",
          data: widget.data,
          domainFn: (BarChartModel series, _) => series.examType,
          measureFn: (BarChartModel series, _) => series.points,
          labelAccessorFn: (BarChartModel series, _) => series.grade,
          colorFn: (BarChartModel series, _) => series.color),
    ];
    return Container(
      height: 200,
      padding: EdgeInsets.all(10),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text('Performance in Exam',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          Expanded(
            child: charts.BarChart(
              series,
              animate: true,
              animationDuration: Duration(seconds: 1),
              primaryMeasureAxis: charts.NumericAxisSpec(
                  renderSpec: charts.SmallTickRendererSpec(tickLengthPx: 0),
                  showAxisLine: false,
                  tickProviderSpec:
                      charts.StaticNumericTickProviderSpec(staticTicks)),
              barRendererDecorator: charts.BarLabelDecorator<String>(
                  labelPosition: charts.BarLabelPosition.outside),
              domainAxis: charts.OrdinalAxisSpec(
                showAxisLine: false,
                renderSpec: charts.SmallTickRendererSpec(
                  tickLengthPx: 0,
                ),
              ),
              secondaryMeasureAxis: charts.NumericAxisSpec(
                renderSpec: charts.NoneRenderSpec(
                    axisLineStyle: charts.LineStyleSpec(
                  thickness: 0,
                )),
              ),
              defaultInteractions: true,
            ),
          ),
        ]),
      ),
    );
  }
}
