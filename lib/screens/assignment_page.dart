import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';

class AssignmentPage extends StatefulWidget {
  @override
  _AssignmentPageState createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: Container(
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
                            color: MyColors.customcolor,
                          ),
                          color: Color.fromRGBO(44, 44, 44, 1),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Center(
                          child: Text(
                            'Assignment',
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
            Center(
              child: FDottedLine(
                color: MyColors.customcolor,
                strokeWidth: 1.0,
                dottedLength: 3.0,
                space: 1.0,
                corner: FDottedLineCorner.all(50.0),
                child: Container(
                  width: 200,
                  height: 30,
                  alignment: Alignment.center,
                  child: Text(
                    "Class ONE-'A'",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  assignmentCard(
                      '10th Aug',
                      'Write an essay on school',
                      'You have to write essay of 2000 words about your school',
                      'English'),
                  assignmentCard(
                      '10th Aug',
                      'Make Sentences.',
                      'Make sentences using the following phrases in one or two line',
                      'English'),
                  assignmentCard(
                      '10th Aug',
                      'Write an essay on school',
                      'You have to write essay of 2000 words about your school',
                      'English'),
                  assignmentCard(
                      '10th Aug',
                      'Make Sentences.',
                      'Make sentences using the following phrases in one or two line',
                      'English'),
                  assignmentCard(
                      '10th Aug',
                      'Write an essay on school',
                      'You have to write essay of 2000 words about your school',
                      'English'),
                  assignmentCard(
                      '10th Aug',
                      'Make Sentences.',
                      'Make sentences using the following phrases in one or two line',
                      'English'),
                ],
              ),
            ))
          ]),
        ),
      ),
    );
  }

  Card assignmentCard(String date, String title, String desc, String subject) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 120,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.customcolor,
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$date',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      'Deadline :',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Assignment Title:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Text(
                              'Uploaded Today',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ]),
                      Text(
                        '$title',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        '$desc',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'Subject: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                        TextSpan(
                            text: '$subject',
                            style: TextStyle(color: Colors.black, fontSize: 12))
                      ])),
                      SizedBox(height: 5),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'View',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 5),
                            IconButton(
                              padding: EdgeInsets.all(0),
                              constraints: BoxConstraints(),
                              iconSize: 12,
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: MyColors.customcolor,
                              ),
                              onPressed: () {
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(
                                      duration: Duration(seconds: 2),
                                      content: WillPopScope(
                                          child: Text('Viewing...'),
                                          onWillPop: () async {
                                            _scaffoldKey.currentState
                                                .removeCurrentSnackBar();
                                            return true;
                                          }),
                                    ))
                                    .closed;
                              },
                            ),
                            SizedBox(width: 5),
                            Text(
                              '|',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Download',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 5),
                            IconButton(
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.all(0),
                              iconSize: 12,
                              icon: Icon(
                                Icons.download_rounded,
                                color: MyColors.customcolor,
                              ),
                              onPressed: () {
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(
                                      duration: Duration(seconds: 4),
                                      content: WillPopScope(
                                          child: Text('Downloading...'),
                                          onWillPop: () async {
                                            _scaffoldKey.currentState
                                                .removeCurrentSnackBar();
                                            return true;
                                          }),
                                      action: SnackBarAction(
                                          label: 'Cancel',
                                          onPressed: () {
                                            deactivate();
                                          }),
                                    ))
                                    .closed;
                              },
                            ),
                          ]),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
