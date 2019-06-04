import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../home_screen.dart';

class Kemu2Page extends StatefulWidget {
  _Kemu2PageState createState() => _Kemu2PageState();
}

class _Kemu2PageState extends State<Kemu2Page> {
  int page = 1;
  List _video;

  @override
  void initState() {
    super.initState();
    _video = List();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 1.0,
        // crossAxisSpacing: 1.0,
        childAspectRatio: 1.65,
      ),
      itemCount: _video.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildColumn();
      },
    );
  }

  Widget _buildColumn() {
    return Text("1");
  }

  loadData() {
    _video.add("value");
    print(_video);
  }
}

WebWithNoToken(String title, String url) {
  return web(title, url);
}

web(String text, String url) {
  WebviewScaffold voteWeb = WebviewScaffold(
    url: url,
    appBar: new AppBar(
      title: new Text("$text"),
    ),
  );
  return voteWeb;
}
