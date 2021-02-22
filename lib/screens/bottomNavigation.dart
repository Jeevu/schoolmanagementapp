import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';
import 'package:schoolmanagementapp/screens/tabItems.dart';

class BottomNavigation extends StatelessWidget {
  @override
  BottomNavigation({this.onSelectTab, this.tabs, this.defaultTab});
  final ValueChanged<int> onSelectTab;
  final int defaultTab;
  final List<TabItem> tabs;
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: defaultTab,
      selectedIconTheme: IconThemeData(size: 24),
      selectedItemColor: MyColors.customcolor,
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: MyColors.customcolor),
      unselectedItemColor: MyColors.customcolor,
      elevation: 30,
      iconSize: 22,
      type: BottomNavigationBarType.shifting,
      items: tabs
          .map(
            (e) => _buildItem(
              index: e.getIndex(),
              icon: e.imageIcon,
              name: e.tabName,
            ),
          )
          .toList(),
      onTap: (index) => onSelectTab(
        index,
      ),
    );
  }

  BottomNavigationBarItem _buildItem({int index, String icon, String name}) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
      ),
      label: name,
    );
  }
}
