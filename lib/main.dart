import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/screens/examination_page.dart';
import 'package:schoolmanagementapp/screens/homepage.dart';
import 'package:schoolmanagementapp/screens/notice_board.dart';
import 'package:schoolmanagementapp/routes/route.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    home:Scaffold(
     // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      
     // appBar: AppBar(title:Text(''),),
    body:
    MyRoute(),
    //NoticeBoardPage()
    //ExaminationPage(),
   
    ),
    debugShowCheckedModeBanner: false,
     
    //Center(child:LoginPage(),), ),
   
      
      //LoginPage(),),
    
    
     
    );
  }
 
}