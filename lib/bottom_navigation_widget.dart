import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/page_screen.dart';
import 'pages/air_screen.dart';
import 'pages/my_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.purple;
  int _currentIndex = 0;
  List<Widget> PageList = List();

  @override
  void initState() {
    PageList
      ..add(HomeScreen())
      ..add(PageScreen())
      ..add(AirScreen())
      ..add(MyScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _BottomNavigationColor,
                ),
                title: Text('题库',
                    style: TextStyle(color: _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavigationColor,
                ),
                title: Text('技巧',
                    style: TextStyle(color: _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _BottomNavigationColor,
                ),
                title: Text('分享',
                    style: TextStyle(color: _BottomNavigationColor))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.my_location,
                  color: _BottomNavigationColor,
                ),
                title: Text('我的',
                    style: TextStyle(color: _BottomNavigationColor))),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed),
    );
  }
}
