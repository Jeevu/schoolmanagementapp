import 'package:schoolmanagementapp/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/screens/bottomNavigation.dart';
import 'package:schoolmanagementapp/screens/events_page.dart';
import 'package:schoolmanagementapp/screens/examination_page.dart';
import 'package:schoolmanagementapp/screens/class_routine.dart';



class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  bool notify = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    print(MediaQuery.of(context).size.height * 0.09);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      drawer: drawDrawer(),
      appBar: AppBar(
          leading: InkWell(
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onTap: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Home", style: TextStyle(color: Colors.black)),
          actions: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: IconButton(
                  icon: Image.asset('assets/Assets/nitificationicon.png'),
                  onPressed: null,
                ))
          ]),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Welcome, Sophia Shrestha!",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20),

          //height: double.maxFinite,
          Column(
            children: [
              Card(
                child: Container(
                  height: deviceSize.height * 0.57,
                  width: deviceSize.width * 0.95,
                  padding: EdgeInsets.fromLTRB(2, 15, 2, 5),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5),
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      spacing: deviceSize.height * 0.04,
                      runSpacing: deviceSize.height * 0.01,
                      children: [
                        //Change Icon and function for each chip
                        InkWell(
                          child: drawChip(
                              "Class Routine",
                              Image.asset('assets/Home-Icons/routine.png'),
                              deviceSize),
                          onTap:  () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ClassRoutine(),
                                ),
                              );
                            },
                        ),
                        InkWell(
                          child: drawChip(
                              "Attendance",
                              Image.asset('assets/Home-Icons/attendance.png'),
                              deviceSize),
                          onTap: null,
                        ),
                        InkWell(
                          child: drawChip(
                              "Examination",
                              Image.asset('assets/Home-Icons/quiz.png'),
                              deviceSize),
                          onTap: () {
                            Navigator.pushNamed(context, '/examinationpage');
                          },
                        ),
                        InkWell(
                          child: drawChip(
                              "Syllabus",
                              Image.asset('assets/Home-Icons/syllabus.png'),
                              deviceSize),
                          onTap: null,
                        ),

                        InkWell(
                          child: drawChip(
                              "Results",
                              Image.asset('assets/Home-Icons/tasks.png'),
                              deviceSize),
                          onTap: null,
                        ),
                        InkWell(
                          child: drawChip(
                              "Events",
                              Image.asset('assets/Home-Icons/calendar.png'),
                              deviceSize),
                          onTap:  () {
                              setState(() {
                                BottomNavigation(defaultTab: 0,);
                              });
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => EventPage(),
                                ),
                              );
                            },
                        ),
                        InkWell(
                          child: drawChip(
                              "Notice Board",
                              Image.asset('assets/Home-Icons/noticeboard.png'),
                              deviceSize),
                          onTap: () {
                            Navigator.pushNamed(context, '/noticeboard');
                          },
                        ),
                        InkWell(
                          child: drawChip(
                              "Profile",
                              Image.asset('assets/Home-Icons/reading-book.png'),
                              deviceSize),
                          onTap: () {
                            Navigator.pushNamed(context, '/profilepage');
                          },
                        ),
                        InkWell(
                            child: drawChip(
                                "Assignments",
                                Image.asset('assets/Home-Icons/student.png'),
                                deviceSize),
                            onTap: () {
                              setState(() {
                                BottomNavigation(defaultTab: 0,);
                               print("hello!!");
                              });
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ExaminationPage(),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ),
              Wrap(
                children: [
                  InkWell(
                    child: Card(
                      shadowColor: Colors.black38,
                      child: Container(
                        width: deviceSize.width * 0.465,
                        height: deviceSize.height * 0.07,
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: deviceSize.height * 0.036,
                              width: deviceSize.height * 0.036,
                              padding: EdgeInsets.all(3),
                              child: Center(
                                child:
                                    Image.asset('assets/Home-Icons/pray.png'),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors.customcolor,
                              ),
                            ),
                            // SizedBox(width: 9),
                            Text("Morning Prayer",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 10)),
                            // SizedBox(width: 10),
                            Image.asset('assets/Home-Icons/iconplaycircle.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Card(
                      shadowColor: Colors.black38,
                      child: Container(
                        width: deviceSize.width * 0.465,
                        height: deviceSize.height * 0.07,
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: deviceSize.height * 0.036,
                              width: deviceSize.height * 0.036,
                              padding: EdgeInsets.all(3),
                              child: Image.asset('assets/Home-Icons/nepal.png'),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors.customcolor,
                              ),
                            ),
                            // SizedBox(width: 9),
                            Text("National Anthem",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 10)),
                            // SizedBox(width: 10),
                            Image.asset('assets/Home-Icons/iconplaycircle.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }

  drawChip(String text, Image ic, var deviceSize) {
    return Container(
      width: deviceSize.width * 0.23,
      child: Column(
        children: [
          Container(
            height: deviceSize.height * 0.09,
            width: deviceSize.height * 0.09,
            child: Center(
              child: Container(
                  //  margin: EdgeInsets.all(20),
                  height: deviceSize.height * 0.042,
                  width: deviceSize.height * 0.042,
                  child: ic),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: MyColors.customcolor),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
                color: MyColors.customcolor,
                fontWeight: FontWeight.w800,
                fontSize: 13),
          ),
          SizedBox(height: 20),
          //    ],
          //   ),
        ],
      ),

      // height: DeviceSize(context).height*0.095,
      // width:  DeviceSize(context).height*0.095,
      // child: Center(
      //   child: Container(
      //       //  margin: EdgeInsets.all(20),
      //       height: 35,
      //       width: 35,
      //       child: ic),
      //   ),
    );
  }

  Drawer drawDrawer() {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(child: Container(height: 10)),
        ListTile(
          title: Text("Home"),
          onTap: () => {},
        ),
        ListTile(
          title: Text("Profile"),
          onTap: () => {},
        ),
      ]),
    );
  }
}
