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
  ExamType arguments;
  int _currentindex = 2;
  List<Widget> _pages = <Widget>[
    ExaminationPage(),
    NoticeBoardPage(),
    Home(),
    ProfilePage(),
    //ExaminationSchedule(),
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
              icon: Image.asset('assets/Assets/syllabusicon.png'),
              
              //  Icon(
              //   Icons.home,
              //   // color: Colors.black,
              // ),
              label: 'Syllabus',
              //  backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon:  Image.asset('assets/Assets/noticeicon.png'),
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
              icon: Image.asset('assets/Assets/profileicon.png'),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/Assets/editicon.png'),
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
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Welcome, Sophia Shrestha!",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 5),
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
                        "Class Routine",
                        Image.asset('assets/Home-Icons/routine.png'),
                        null
                        
                        ),
                    drawChip(
                        "Attendance",
                        Image.asset('assets/Home-Icons/attendance.png'),
                        null
                        ),
                    drawChip(
                        "Examination",
                        Image.asset('assets/Home-Icons/quiz.png'),
                        null
                        ),
                    drawChip(
                        "Syllabus",
                        Image.asset('assets/Home-Icons/syllabus.png'),
                        null
                        ),
                    drawChip(
                        "Results",
                        Image.asset('assets/Home-Icons/tasks.png'),
                      null
                        ),
                    drawChip(
                        "Events",
                        Image.asset('assets/Home-Icons/calendar.png'),
                       null
                        ),
                    drawChip(
                        "Notice Board",
                        Image.asset('assets/Home-Icons/noticeboard.png'),
                        null
                        ),
                    drawChip(
                        "Profile",
                        Image.asset('assets/Home-Icons/reading-book.png'),
                      // getAttendance(
                      //   context
                      // )
                      null
                        ),
                    drawChip(
                        "Assignments",
                        Image.asset('assets/Home-Icons/student.png'),
                        null
                    ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            padding: EdgeInsets.all(3),
                            child: Center(
                              child: Image.asset('assets/Home-Icons/pray.png'),
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
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
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
      ),
    );
  }
}

 getAttendance(BuildContext context) {
  Navigator.pushNamed(context, "/profilepage");
}

InkWell drawChip(String text, Image ic,Function getAttend) {
  return InkWell(
      child: Column(
      children: [
        Container(
          height: 75,
          width: 75,
          child: Center(
            child: Container(
                //  margin: EdgeInsets.all(20),
                height: 35,
                width: 35,
                child: ic),
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
    ),
    onTap: getAttend,
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
