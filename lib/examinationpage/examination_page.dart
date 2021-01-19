import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/examinationpage/examinationcard.dart';

class ExaminationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Examination',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.alarm,
              color: Colors.lightBlue[900],
            ),
          )
        ],
      ),
      body: ExaminationType(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home,color: Colors.black,),
           label: 'Home'
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: 'Home'
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: 'Home'
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: 'Home'
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
      child: Icon(Icons.home,color: Colors.black,),
      elevation: 0.0,
      backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class ExaminationType extends StatefulWidget {
  @override
  _ExaminationTypeState createState() => _ExaminationTypeState();
}

class _ExaminationTypeState extends State<ExaminationType> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: ExaminationCard(),
        ));
  }
}
