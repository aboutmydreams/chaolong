import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';
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
        childAspectRatio: 2.85,
      ),
      itemCount: _video.length,
      itemBuilder: (BuildContext context, int index) {
        print(_video[index]);
        return _buildRow(_video[index]);
      },
    );
  }

  Widget _buildRow(Urldata urldata) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          openURL(urldata.weburl);
        },
        child: Row(
          children: <Widget>[
            Container(
              height: window.physicalSize.height,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(
                  urldata.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  child: Text(urldata.title),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  loadData() {
    _video = urldata;
    print(_video);
  }

  final List<Urldata> urldata = [
    Urldata(
      title: "每月之星",
      imageUrl:
          "http://i2.hdslb.com/bfs/archive/d3bcbe0fe9c2eaff45ef430f92c2a08d57dc3dc8.jpg@960w_600h.webp",
      weburl:
          "https://m.bilibili.com/video/av4168656.html?from=search&seid=7346472288145916485",
      icondata: Icons.star_border,
    ),
    Urldata(
      title: "填工作量",
      imageUrl:
          "https://cdn.nlark.com/yuque/0/2019/png/164272/1557108482314-1bd6b6e5-c51e-40e8-94d8-2b88f2b33b32.png",
      weburl: "/workload",
      icondata: Icons.web,
    ),
    Urldata(
      title: "投票",
      imageUrl:
          "https://cdn.nlark.com/yuque/0/2019/png/164272/1557111186233-3e0529e4-c9f4-4850-8617-d9ad702f0c46.png",
      weburl: "/vote",
      icondata: Icons.flag,
    ),
    Urldata(
      title: "活动签到",
      imageUrl:
          "https://cdn.nlark.com/yuque/0/2019/png/164272/1557102986721-495bf7cc-868c-4c49-9bfc-47abe2f24d51.png",
      weburl: "/meeting",
      icondata: Icons.done_outline,
    ),
    Urldata(
      title: "语雀",
      imageUrl:
          "https://cdn.nlark.com/yuque/0/2019/png/164272/1557103368820-b4e9b08c-6a63-4d6e-acf3-56fd83e40f94.png",
      weburl: "/yuque",
      icondata: Icons.folder_open,
    ),
    Urldata(
      title: "Teambition",
      imageUrl:
          "https://cdn.nlark.com/yuque/0/2019/png/164272/1557110768198-09b603e7-13f3-4a3b-9ee0-69099fc4ef2d.png",
      weburl: "/teambition",
      icondata: Icons.supervisor_account,
    ),
    Urldata(
      title: "GitLab",
      imageUrl:
          "https://cdn.nlark.com/yuque/0/2019/png/164272/1557110462447-96902ed4-b8bd-40a8-a087-616f9cab9048.png",
      weburl: "/gitlab",
      icondata: Icons.code,
    ),
  ];
}

class Urldata {
  Urldata({
    this.title,
    this.imageUrl,
    this.weburl,
    this.icondata,
  });

  final String title;
  final String imageUrl;
  final String weburl;
  IconData icondata;
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

openURL(String url) async {
  // const url = 'https://us.ncuhomer.cn';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
