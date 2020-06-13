import '../utilities/themeStyle.dart';
import 'package:flutter/material.dart';

class CurrentTaskCard extends StatelessWidget {
  final String taskText;
  final String timeLeft;
  final Icon icon;
  final Color cardColor;
  CurrentTaskCard({this.taskText,this.timeLeft,this.icon,this.cardColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        color: this.cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  this.icon,
                  Text(this.timeLeft,style: ThemeStyle.taskText,)
                ],
              ),
              Text(this.taskText,style: ThemeStyle.taskText,)
            ],
          ),
        ),
      ),
    );
  }
}
