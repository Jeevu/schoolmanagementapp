
import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';
import 'package:schoolmanagementapp/screens/examination_schedule.dart';

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
              color:  MyColors.purplecolor,
            ),
          )
        ],
      ),
      body: Container(
        padding:  EdgeInsets.only(top: 10),
        child:SingleChildScrollView(
          child:ExaminationCard(),
           ))
    );
  }
}


class ExaminationCard extends StatefulWidget {
  @override
  _ExaminationCardState createState() => _ExaminationCardState();
}

class _ExaminationCardState extends State<ExaminationCard> {
  @override
  Widget build(BuildContext context) {
    var items = List<Widget>();
    var carditems = [
      [
        "First Term Examination",
        "06/08-06/20",
      ],
      [
        "Second Term Examination",
        "06/08-06/20",
      ],
      [
        "Third Term Examination",
        "06/08-06/20",
      ],
            [
        "Final Term Examination",
        "06/08-06/20",
      ],
            [
        "Monthly Class Test",
        "06/08-06/20",
      ],
            [
        "First Term Examination",
        "06/08-06/20",
      ],
      [
        "Second Term Examination",
        "06/08-06/20",
      ],
      [
        "Third Term Examination",
        "06/08-06/20",
      ],
            [
        "Final Term Examination",
        "06/08-06/20",
      ],
            [
        "Monthly Class Test",
        "06/08-06/20",
      ],
    ];
    for (var item in carditems) {
      items.add(
        ExaminationCardWidget(
          type: item,
        ),
      );
    }  
    return Column(
      children: items,
    );
  }
}

class ExaminationCardWidget extends StatefulWidget {
  final List type;
 

  const ExaminationCardWidget({Key key, this.type,}) : super(key: key);
  @override
  _ExaminationCardWidgetState createState() => _ExaminationCardWidgetState();
}

class _ExaminationCardWidgetState extends State<ExaminationCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Card(
        color: Colors.lightBlue[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListTile(
          leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.type[0]),
                Text(widget.type[1]),
              ]),
          trailing: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color:  MyColors.purplecolor),
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          onTap: (){
           
            
            Navigator.pushNamed(context, '/examinationschedule',arguments: ExamType(widget.type[0],widget.type[1]));
          }),
        ));
      
    
  }
}
