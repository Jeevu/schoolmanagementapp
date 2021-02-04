import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/routes/route.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    home:Scaffold(
      backgroundColor: Colors.white,
    body:
    MyRoute(),
    ),
    debugShowCheckedModeBanner: false,
    
     
    
     
    );
  }
 
}