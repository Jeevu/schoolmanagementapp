import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:schoolmanagementapp/color/colors.dart';

class SyllabusPage extends StatefulWidget {
  
  @override
  _SyllabusPageState createState() => _SyllabusPageState();
}

class _SyllabusPageState extends State<SyllabusPage> {
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
                            'Syllabus',
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
                    "Class ONE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(height:10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  syllabusCard(01, 'Data Analysis and Algorithm',
                      'Data analysis and algorithm', context),
                  syllabusCard(02, 'Data Analysis and Algorithm',
                      'Data analysis and algorithm', context),
                  syllabusCard(03, 'Data Analysis and Algorithm',
                      'Data analysis and algorithm', context),
                  syllabusCard(
                      04,
                      'An Introdiction to Data Analysis and Algorithm',
                      'This chapter includes introduction to data defination,data types,variables,decision',
                      context),
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget syllabusCard(int chapterNo, String chapterName, String chapterDesc,
      BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(children: [
        Container(
            width: 55,
            height: 75,
            decoration: BoxDecoration(
                color: MyColors.customcolor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$chapterNo',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Chapter',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ])),
                
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 5),
            margin: EdgeInsets.only(right: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    chapterName,
                    maxLines: 2,
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  Row(children: [
                    Expanded(
                      child: Text(
                        chapterDesc,
                        maxLines: 2,
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.download_rounded),
                      onPressed: () {
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(
                              duration: Duration(seconds: 4),
                              content: WillPopScope(
                                  child: Text('Downloading Chapter $chapterNo'),
                                  onWillPop: () async {
                                    _scaffoldKey.currentState
                                        .removeCurrentSnackBar();
                                    return true;
                                  }),
                                  action: SnackBarAction(label: 'Cancel', onPressed: (){
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
      ]),
    );
  }
}
