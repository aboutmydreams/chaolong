import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
import 'pages/my_screen.dart';
import 'pages/home_screen.dart';
import 'pages/page_screen.dart';
import 'pages/air_screen.dart';

import 'pages/my_page/about_us.dart';
import 'pages/my_page/setting.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '轻驾',
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavigationWidget(),
        '/my': (context) => MyScreen(),
        '/aboutus': (context) => AboutUs(),
        '/setting': (context) => SettingPage(),
      },
      // home: BottomNavigationWidget(),
    );
  }
}
