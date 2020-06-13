import '../utilities/themeStyle.dart';
import 'package:flutter/material.dart';

class CurrentTaskCard extends StatelessWidget {
  final String taskText;
  final String timeLeft;
  final Icon icon;
  CurrentTaskCard({this.taskText,this.timeLeft,this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 200.0,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20.0)
      ),
      child: Card(
        child: Column(
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
    );
  }
}
