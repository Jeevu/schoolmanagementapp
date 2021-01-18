import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/examination_page.dart';
import 'package:schoolmanagementapp/login_page.dart';
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
    body:ExaminationPage(),
   
    ),
    debugShowCheckedModeBanner: false,
     
    //Center(child:LoginPage(),), ),
   
      
      //LoginPage(),),
    
    
     
    );
  }
 
}