import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/screens/examination_page.dart';
import 'package:schoolmanagementapp/screens/examination_schedule.dart';
import 'package:schoolmanagementapp/screens/notice_board.dart';
import 'package:schoolmanagementapp/screens/profile_page.dart';


class MyRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //'/':(context)=>HomePage(),
        '/examinationpage':(context)=>ExaminationPage(),
        '/examinationschedule':(context)=>ExaminationSchedule(ModalRoute.of(context).settings.arguments),
        '/noticeboard':(context)=>NoticeBoardPage(),
        '/profilepage':(context)=>ProfilePage(),
      },
    );
  }
}