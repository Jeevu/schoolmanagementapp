import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String grade;
  String examType;
  double points;
 
  final charts.Color color;

  BarChartModel({this.grade, 
  this.examType, this.points, 
  this.color,}
);
}

 
