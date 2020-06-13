import 'package:flutter/material.dart';
import '../constants.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () {},color: kpurple,),
                  Text('Design Team',style: labelTextStyle(25.0),),
                  IconButton(icon: Icon(Icons.edit),onPressed: () {},color: kgrey,),
                ],
              ),
    );
  }
}