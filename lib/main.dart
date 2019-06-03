import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:async';
import 'data/class1.dart';

import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
import 'pages/home_screen.dart';
import 'pages/page_screen.dart';
import 'pages/air_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter bottomNavigationBar',
        theme: ThemeData.light(),
        home: BottomNavigationWidget());
  }
}

