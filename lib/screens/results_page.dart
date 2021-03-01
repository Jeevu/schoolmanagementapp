import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/widgets/bar_chart_demo.dart';
import 'package:schoolmanagementapp/widgets/bar_chart_graph.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
        return SafeArea(
          child: SingleChildScrollView(
                      child: Container(
               padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    width: double.infinity,
                    height: size.height * 0.091,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                size: 30,
                              ),
                              color: Color.fromRGBO(44, 44, 44, 1),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Center(
                              child: Text(
                                'Results',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Image.asset('assets/Assets/nitificationicon.png'),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                resultType('First Terminal Exam',3.8),
                resultType('Second Terminal Exam',2.2),
                resultType('Second Terminal Exam',3.9),
                BarChartDemo(),
        ]),
      ),
          ),
    );
  }
  

  Widget resultType(String examType, double points) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 5, color: Colors.lightBlue),
          ),
         
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(examType,style: TextStyle(fontWeight: FontWeight.bold),),
              Container(
                height: 20,
                width: 50,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: 3 < points ? Colors.lightBlue : Colors.red,
                ),
                child: 3 < points
                    ? Text(
                        'Pass',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )
                    : Text(
                        'Fail',
                        style: TextStyle(color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
              ),
            ]),
            SizedBox(height:5),
            Text('Grade:  ${3<points?'A':'B'}',style: TextStyle(color: Colors.green),),
             SizedBox(height:5),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:[
              Text('Points:  $points',style: TextStyle(color: Colors.green),),
              Text('View Full Results',style: TextStyle(color: Colors.lightBlue),)
            ])
          ]),
        ),
      ),
    );
  }
}

