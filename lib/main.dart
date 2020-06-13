import 'package:flutter/material.dart';
import 'utilities/themeStyle.dart';
import './components/custom_tabbar.dart';
import './components/header.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top : 50.0),
        child: Column(
          children: <Widget>[
            Header(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Mobile App',style: ThemeStyle.appBarSubTitle),
                ],
              ),
            ), 
            SizedBox(height: 20.0,),
            CustomTabBar(),
          ],
        ),
      ),
    );
  }
}