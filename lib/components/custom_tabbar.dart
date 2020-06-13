import 'package:flutter/material.dart';
import '../utilities/themeStyle.dart';
import '../utilities/themeColor.dart';
import '../screens/calendar.dart';
import '../screens/tasks.dart';
import '../screens/team.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(vsync: this,length: 3);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left : 15.0),
          child: TabBar(
            controller: tabController,
            indicatorColor: ThemeColor.kpurple,
            labelColor: ThemeColor.kpurple ,
            unselectedLabelColor: ThemeColor.kgrey,
            isScrollable: false,
            tabs: <Widget>[
              Tab(child: Text('Team',style: ThemeStyle.tabText),),
              Tab(child: Text('Tasks',style: ThemeStyle.tabText),),
              Tab(child: Text('Calendar',style: ThemeStyle.tabText),)
            ],
          ),
        ),
      Container(
        height: MediaQuery.of(context).size.height-190.0,
        child: TabBarView(
          controller: tabController,
          children: <Widget>[
            Team(),
            Tasks(),
            Calendar(),
          ],
        ),
      ),
      ],
    );
  }
}