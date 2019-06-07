import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("关于我们"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.network(
                "https://avatars3.githubusercontent.com/u/34613360?s=460&v=4"),
          )
        ],
      ),
    );
  }
}
