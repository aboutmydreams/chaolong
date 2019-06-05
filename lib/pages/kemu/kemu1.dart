import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';
import '../home_screen.dart';

class Kemu1Page extends StatefulWidget {
  _Kemu1PageState createState() => _Kemu1PageState();
}

class _Kemu1PageState extends State<Kemu1Page> {
  // @override
  // void initState() {
  //   super.initState();
  //   _video = List();
  //   loadData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: window.physicalSize.width,
            // height: 100,
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Center(
                  heightFactor: 2,
                  child: Text(
                    "历史记录",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                )
              ],
            ),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(
                const Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  offset: new Offset(0.0, 0.0), // (x, y)
                  blurRadius: 0.1,
                  color: const Color(0x80000000),
                ),
                BoxShadow(
                  offset: new Offset(0.0, 3.0),
                  blurRadius: 6.0,
                  color: const Color(0x80000000),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
