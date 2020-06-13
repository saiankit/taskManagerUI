import 'package:flutter/material.dart';
import '../constants.dart';
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
            indicatorColor: kpurple,
            labelColor: kpurple ,
            unselectedLabelColor: kgrey,
            isScrollable: false,
            tabs: <Widget>[
              Tab(child: Text('Team',style: labelTextStyle(20.0)),),
              Tab(child: Text('Tasks',style: labelTextStyle(20.0)),),
              Tab(child: Text('Calendar',style: labelTextStyle(20.0)),)
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