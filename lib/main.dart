import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/examinationpage/examination_page.dart';
import 'package:schoolmanagementapp/noticebordpage/noticeboard.dart';
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
    body:NoticeBoardPage()
    //ExaminationPage(),
   
    ),
    debugShowCheckedModeBanner: false,
     
    //Center(child:LoginPage(),), ),
   
      
      //LoginPage(),),
    
    
     
    );
  }
 
}