import 'package:flutter/material.dart';
import '../components/currentTaskBlock.dart';
import '../components/completedTaskBlock.dart';
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
          CurrentTaskBlock(),
          CompletedTaskBlock()
        ],
      )
    );
  }
}
