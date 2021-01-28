import 'package:schoolmanagementapp/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/screens/examination_schedule.dart';
import 'package:schoolmanagementapp/screens/examination_page.dart';
import 'package:schoolmanagementapp/screens/notice_board.dart';
import 'package:schoolmanagementapp/screens/profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentindex = 3;
  List<Widget> _pages = <Widget>[
    Home(),
    NoticeBoardPage(),
    ExaminationPage(),
    ProfilePage(),
    ExaminationSchedule(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentindex,
        children: _pages,
        //Home(),
      ),
 
     // persistentFooterButtons: [],
      bottomNavigationBar: Container(
              child: BottomNavigationBar(
          selectedItemColor: MyColors.customcolor,
          unselectedItemColor: MyColors.customcolor,
          selectedFontSize: 12,
        //  unselectedFontSize: ,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: MyColors.customcolor),
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          currentIndex: _currentindex,
          onTap: (int index) {
            setState(() {
              _currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                 // color: Colors.black,
                ),
                label: 'Syllabus',
              //  backgroundColor: Colors.black
                ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
             //   color: Colors.black,
              ),
              label: 'Notice',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
           //     color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
           //     color: Colors.black,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
            //    color: Colors.black,
              ),
              label: 'Edit',
            ),
          ],
        ),
      ),
    );
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
    return Scaffold(
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
                  icon: notify
                      ? Icon(Icons.notifications_none)
                      : Icon(Icons.notifications_active),
                  color: MyColors.customcolor,
                  onPressed: () {
                    setState(() {
                      notify = !notify;
                    });
                  },
                ))
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Text(
                  "Welcome, Sophia Shrestha!",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 30,
                  children: [
                    //Change Icon and function for each chip
                    drawChip(
                        "Class Routine", Icon(Icons.person), getAttendance),
                    drawChip("Attendance", Icon(Icons.person), getAttendance),
                    drawChip("Examination", Icon(Icons.person), getAttendance),
                    drawChip(
                        "Syllabus", Icon(Icons.person_add_alt), getAttendance),
                    drawChip(
                        "Results", Icon(Icons.person_add_alt), getAttendance),
                    drawChip(
                        "Events", Icon(Icons.calendar_today), getAttendance),
                    drawChip("Notice Board", Icon(Icons.notifications_none),
                        getAttendance),
                    drawChip("Profile", Icon(Icons.group), getAttendance),
                    drawChip(
                        "Assignments", Icon(Icons.assignment), getAttendance),
                  ],
                ),
              ),
            ),
            Wrap(
              // spacing: 20,
              children: [
                InkWell(
                  child: Card(
                    shadowColor: Colors.black38,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            child: Icon(
                              Icons.clean_hands,
                              size: 20,
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
                          SizedBox(width: 10),
                          Icon(
                            Icons.play_circle_outline,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Card(
                    shadowColor: Colors.black38,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            child: Icon(
                              Icons.clean_hands,
                              size: 20,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MyColors.customcolor,
                            ),
                          ),
                          // SizedBox(width: 9),
                          Text("National Anthem",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10)),
                          SizedBox(width: 10),
                          Icon(
                            Icons.play_circle_outline,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void getAttendance() {}

Column drawChip(String text, Icon ic, Function getAttend) {
  return Column(
    children: [
      Container(
        height: 75,
        width: 75,
    
        child: Center(
          child: InkWell(child: ic, onTap: getAttend),
        ),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: MyColors.customcolor),
      ),
      SizedBox(height: 10),
      Text(
        text,
        style: TextStyle(
            color: MyColors.customcolor,
            fontWeight: FontWeight.w800,
            fontSize: 14),
      ),
      SizedBox(height: 30)
    ],
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
