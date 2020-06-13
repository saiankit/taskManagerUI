import 'package:flutter/material.dart';
import '../utilities/themeColor.dart';
import '../utilities/themeStyle.dart';
import '../widgets/current_task.dart';
class CurrentTaskBlock extends StatefulWidget {
  @override
  _CurrentTaskBlockState createState() => _CurrentTaskBlockState();
}

class _CurrentTaskBlockState extends State<CurrentTaskBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          SizedBox(height: 25.0,),
          Row(
            children: <Widget>[
              SizedBox(width: 20.0,),
              Text('Current Tasks',style: ThemeStyle.taskText,)
            ],
          ),
          SizedBox(height: 20.0,),
          SizedBox(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CurrentTaskCard(taskText: 'Creating a prototype with description',timeLeft: '3 hours',icon: Icon(Icons.ac_unit,),cardColor:ThemeColor.kgrey ,),
                CurrentTaskCard(taskText: 'Creating an interstening concept for the app',timeLeft: '5 hours',icon: Icon(Icons.accessibility_new),cardColor:ThemeColor.kyellow),
              ],
            ),
          ),
        ],
      );
  }
}