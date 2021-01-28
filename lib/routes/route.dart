import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/screens/examination_page.dart';
import 'package:schoolmanagementapp/screens/examination_schedule.dart';
import 'package:schoolmanagementapp/screens/homepage.dart';
import 'package:schoolmanagementapp/screens/notice_board.dart';


class MyRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>HomePage(),
        '/examinationpage':(context)=>ExaminationPage(),
        '/homepage':(context)=>HomePage(),
        '/examinationschedule':(context)=>ExaminationSchedule(),
        '/noticeboard':(context)=>NoticeBoardPage(),
      },
    );
  }
}