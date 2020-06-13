import 'package:flutter/material.dart';
import '../utilities/themeStyle.dart';
import '../utilities/themeColor.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () {},color: ThemeColor.kpurple,),
                  Text('Design Team',style: ThemeStyle.appBar,),
                  IconButton(icon: Icon(Icons.edit),onPressed: () {},color: ThemeColor.kgrey,),
                ],
              ),
    );
  }
}