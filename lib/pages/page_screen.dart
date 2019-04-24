import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('page1'),
      ),
      body:Center(
        child: Text('page1'),
      )
    );
  }
}