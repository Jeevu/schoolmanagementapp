import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';
import 'package:schoolmanagementapp/screens/app.dart';
import 'package:schoolmanagementapp/screens/tabItems.dart';

class BottomNavigation extends StatelessWidget {
  
  @override
  BottomNavigation({this.onSelectTab,this.tabs});
  final ValueChanged<int> onSelectTab;
  final List<TabItem> tabs;
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     // selectedFontSize: ,
     // unselectedFontSize: 12,
     // selectedIconTheme: IconThemeData(color: MyColors.customcolor,size:16,opacity: 1 ),
     // unselectedIconTheme:  IconThemeData(color:Colors.blueGrey[400],size:14),
      selectedLabelStyle: TextStyle(color: MyColors.customcolor,fontSize: 14,),
      unselectedLabelStyle: TextStyle(color: MyColors.customcolor,fontSize: 14),
      selectedItemColor: MyColors.customcolor,
      unselectedItemColor: MyColors.customcolor,
      elevation: 30,
      iconSize: 26,
    //  selectedLabelStyle: TextStyle(color: Colors.grey),
      
      type: BottomNavigationBarType.fixed,
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

  BottomNavigationBarItem _buildItem(

      {int index, String icon, String name}) {
       
        
    return BottomNavigationBarItem(
     
      icon: Image.asset(
          icon,
          color: _tabColor(index:index),
          
      ),
      label: name,
    );
   
    
  }
      Color _tabColor({int index}) {
      
    return AppState.currentTab == index ? MyColors.customcolor : Colors.grey;
  }
  }

 