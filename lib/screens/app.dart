import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/screens/bottomNavigation.dart';
import 'package:schoolmanagementapp/screens/examination_page.dart';
import 'package:schoolmanagementapp/screens/home_page.dart';
import 'package:schoolmanagementapp/screens/notice_board.dart';
import 'package:schoolmanagementapp/screens/profile_page.dart';
import 'package:schoolmanagementapp/screens/syllabus_page.dart';
import 'package:schoolmanagementapp/screens/tabItems.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
static int currentTab =2;
final List<TabItem> tabs =[
  TabItem(tabName: 'Syllabus', imageIcon:  'assets/Assets/syllabusicon.png', page: SyllabusPage(),),
  TabItem(tabName: 'Notice', imageIcon: 'assets/Assets/noticeicon.png', page: NoticeBoardPage()),
  TabItem(tabName: 'Home', imageIcon: 'assets/Assets/reading-book.png', page: Home()),
  TabItem(tabName: 'Profile', imageIcon:'assets/Assets/profileicon.png', page: ProfilePage()),
  TabItem(tabName: 'Edit', imageIcon: 'assets/Assets/editicon.png', page: EditPage()),
];
  AppState() {
    tabs.asMap().forEach((index, details) {
      details.setIndex(index);
    });
  }
  void _selectTab(int index) {
    if (index == currentTab) {
      tabs[index].key.currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => currentTab = index);
    }
  }

   @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await tabs[currentTab].key.currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (currentTab != 2) {

            _selectTab(2);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: IndexedStack(
          index: currentTab,
          children: tabs.map((e) => e.page).toList(),
        ),
        bottomNavigationBar: Container(
          height: 75,
                  child: BottomNavigation(
            onSelectTab: _selectTab,
            tabs: tabs,
            defaultTab: currentTab,

          ),
        ),
      ),
    );
  }
}