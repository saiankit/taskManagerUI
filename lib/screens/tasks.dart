import 'package:flutter/material.dart';
import 'package:taskManagerUI/utilities/themestyle.dart';
import '../widgets/current_task.dart';
class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 25.0,),
          Row(
            children: <Widget>[
              SizedBox(width: 20.0,),
              Text('Current Task',style: ThemeStyle.taskText,)
            ],
          ),
          SizedBox(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CurrentTaskCard(taskText: 'Creating a prototype with description',timeLeft: '3 hours',icon: Icon(Icons.ac_unit),),
                CurrentTaskCard(taskText: 'Creating an interstening concept for the app',timeLeft: '5 hours',icon: Icon(Icons.accessibility_new),),
                CurrentTaskCard(taskText: 'Hello',timeLeft: '10 hours',icon: Icon(Icons.account_circle),),
              ],
            ),
          ),
        ],
      )
    );
  }
}