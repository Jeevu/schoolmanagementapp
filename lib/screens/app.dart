import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/screens/bottomNavigation.dart';
import 'package:schoolmanagementapp/screens/examination_page.dart';
import 'package:schoolmanagementapp/screens/home_page.dart';
import 'package:schoolmanagementapp/screens/notice_board.dart';
import 'package:schoolmanagementapp/screens/profile_page.dart';
import 'package:schoolmanagementapp/screens/tabItems.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
static int currentTab =2;
final List<TabItem> tabs =[
  TabItem(tabName: 'Syllabus', imageIcon:  'assets/Assets/syllabusicon.png', page: ExaminationPage()),
  TabItem(tabName: 'Notice', imageIcon: 'assets/Assets/noticeicon.png', page: NoticeBoardPage()),
  TabItem(tabName: 'Home', imageIcon: 'assets/Assets/reading-book.png', page: Home()),
  TabItem(tabName: 'Profile', imageIcon:'assets/Assets/profileicon.png', page: ProfilePage()),
  TabItem(tabName: 'Edit', imageIcon: 'assets/Assets/editicon.png', page: EditPage()),
];
  AppState() {
    // indexing is necessary for proper funcationality
    // of determining which tab is active
    tabs.asMap().forEach((index, details) {
      details.setIndex(index);
    });
  }
    // sets current tab index
  // and update state
  void _selectTab(int index) {
    if (index == currentTab) {
      // pop to first route
      // if the user taps on the active tab
      tabs[index].key.currentState.popUntil((route) => route.isFirst);
    } else {
      // update the state
      // in order to repaint
      setState(() => currentTab = index);
    }
  }

   @override
  Widget build(BuildContext context) {
    // WillPopScope handle android back btn
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await tabs[currentTab].key.currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (currentTab != 2) {
            // select 'main' tab
            _selectTab(2);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      // this is the base scaffold
      // don't put appbar in here otherwise you might end up
      // with multiple appbars on one screen
      // eventually breaking the app
      child: Scaffold(
        // indexed stack shows only one child
        body: IndexedStack(
          index: currentTab,
          children: tabs.map((e) => e.page).toList(),
        ),
        // Bottom navigation
        bottomNavigationBar: BottomNavigation(
          onSelectTab: _selectTab,
          tabs: tabs,
        ),
      ),
    );
  }
}