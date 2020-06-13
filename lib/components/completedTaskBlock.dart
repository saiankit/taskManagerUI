import 'package:flutter/material.dart';
import '../utilities/themeStyle.dart';
import '../utilities/themeColor.dart';
import '../widgets/current_task.dart';
class CompletedTaskBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          SizedBox(height: 25.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 20.0,),
              Text('Completed Tasks',style: ThemeStyle.taskText ,),
            ],
          ),
          Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left :8.0,right: 8.0),
            child: GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            children: <Widget>[
              CurrentTaskCard(taskText: 'Creating a prototype with description',timeLeft: '3 hours',icon: Icon(Icons.ac_unit,),cardColor:Colors.amber ,),
              CurrentTaskCard(taskText: 'Creating a prototype with description',timeLeft: '3 hours',icon: Icon(Icons.ac_unit,),cardColor:Colors.cyanAccent ,),
              CurrentTaskCard(taskText: 'Creating a prototype with description',timeLeft: '3 hours',icon: Icon(Icons.ac_unit,),cardColor:ThemeColor.kgrey ,),
              CurrentTaskCard(taskText: 'Creating a prototype with description',timeLeft: '3 hours',icon: Icon(Icons.ac_unit,),cardColor:ThemeColor.kgrey ,),
              CurrentTaskCard(taskText: 'Creating a prototype with description',timeLeft: '3 hours',icon: Icon(Icons.ac_unit,),cardColor:ThemeColor.kgrey ,),
            ],
        ),
          ),
      )
    ],
  ),
);}}