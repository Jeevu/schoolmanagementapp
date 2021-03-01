import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:schoolmanagementapp/widgets/bar_chart_graph.dart';
import 'package:schoolmanagementapp/widgets/bar_chart_model.dart';


class BarChartDemo extends StatefulWidget {
  @override
  _BarChartDemoState createState() => _BarChartDemoState();
}

class _BarChartDemoState extends State<BarChartDemo> {

  final List<BarChartModel> data = [
   
   BarChartModel(examType: '1st Term',
   grade: 'A',
   points: 3.8,
   color: charts.ColorUtil.fromDartColor(Colors.lightBlue),
   ),
      BarChartModel(examType: '2nd Term',
   grade: 'B-',
   points: 2.6,
   color: charts.ColorUtil.fromDartColor(Colors.grey),
   ),
      BarChartModel(examType: '3rd Term',
   grade: 'A+',
   points: 3.9,
   color: charts.ColorUtil.fromDartColor(Colors.lightBlue),
   ),
      BarChartModel(examType: '4th Term',
   grade: 'C+',
   points: 2.2,
   color: charts.ColorUtil.fromDartColor(Colors.grey),
   ),
      BarChartModel(examType: 'Final Term',
   grade: 'B-',
   points: 2.7,
   color: charts.ColorUtil.fromDartColor(Colors.grey),
   ),
 ];
  


  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
           shrinkWrap: true,
            children: [
            BarChartGraph(data),

            ],
          ),

        ),
      
    );
  }
}