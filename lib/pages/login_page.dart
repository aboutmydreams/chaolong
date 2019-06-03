import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import '../bottom_navigation_widget.dart';
import '../data/userdata.dart';
// import '../data/userlogin.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle TheStyle = TextStyle(
      color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w500);
  var usernameController = new TextEditingController();
  var userPwdController = new TextEditingController();

  getTokenData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String getToken(String key) => prefs.getString(key);
    String token = getToken("token");
    //v print(token);
    return token;
  }

  getLocalUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String getIt(String key) => prefs.getString(key);
    String theUsername = getIt("username");
    String thePassword = getIt("password");
    String token = getIt("token");
    // print(token);
    return token;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.95),
      body: Center(
        child: new Column(
          // MainAxisSize在主轴方向占有空间的值，默认是max。还有一个min
          mainAxisSize: MainAxisSize.max,
          // MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 25,
            ),
            Container(
                width: 410,
                height: 150,
                padding: new EdgeInsets.fromLTRB(10, 0.0, 10.0, 10.0),
                child: Container(
                  child: Image.network(
                    'https://cdn.nlark.com/yuque/0/2019/png/164272/1556543827134-06ed3de3-76ab-48c6-bd54-6122233171c6.png',
                    colorBlendMode: BlendMode.darken,
                  ),
                  //color: Color.fromRGBO(150, 180, 230, 1),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              // 用户名输入框
              child: TextField(
                // 控制器
                controller: usernameController,
                keyboardType: TextInputType.number,
                // maxLength: 11,
                // maxLines: 1,
                // 是否自动更正
                autocorrect: false,
                // 是否自动对焦
                autofocus: false,
                decoration: new InputDecoration(
                  suffixText: "可以用学号",
                  suffixStyle: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey[300]),
                  labelText: "用户名",
                  // labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600,color: Colors.blueGrey[300]),
                  icon: new Icon(
                    Icons.filter_tilt_shift,
                    color: Colors.lightBlueAccent[300],
                  ),
                ),
                onChanged: (text) {
                  //内容改变的回调
                  print('change $text');
                },
                onSubmitted: (text) {
                  //内容提交(按回车)的回调
                  print('submit $text');
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                //控制器
                controller: userPwdController,
                // 密码
                obscureText: true,
                decoration: new InputDecoration(
                  labelText: "密码",
                  icon: new Icon(
                    Icons.lock_outline,
                    color: Colors.lightBlueAccent[300],
                  ),
                ),
                onChanged: (text) {
                  //内容改变的回调
                  print('change $text');
                },
                onSubmitted: (text) {
                  //内容提交(按回车)的回调
                  print('submit $text');
                },
              ),
            ),
            Container(
              //这里写800已经超出屏幕了，可以理解为match_parent
              width: window.physicalSize.width,
              margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              // 类似cardview
              child: new Card(
                color: Colors.blueAccent,
                // 阴影
                elevation: 3.0,
                //按钮
                child: new FlatButton(
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  onPressed: () {
                    if (usernameController.text.isEmpty) {
                      //第三方的插件Toast，https://pub.dartlang.org/packages/fluttertoast
                      Fluttertoast.showToast(
                        msg: "用户名不能为空哦",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIos: 2,
                        backgroundColor: Colors.white70,
                        textColor: Colors.grey[800],
                      );
                    } else if (userPwdController.text.isEmpty) {
                      Fluttertoast.showToast(
                        msg: "密码不能为空哦",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIos: 1,
                        backgroundColor: Colors.white70,
                        fontSize: 16.0,
                        textColor: Colors.black,
                      );
                    } else {
                      var username = usernameController.text;
                      var password = userPwdController.text;
                      int data = 0;
                      getUserData(username, password).then(
                        (res) {
                          try {
                            print(res);
                            data = res;
                          } catch (e) {
                            data = 403;
                          }
                          if (data == 200) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        new BottomNavigationWidget()));
                          } else {
                            print(data);
                            return showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: Text("喵喵喵 身份错误"),
                                  content: Text("用户名也可以是当年注册us的邮箱，\n试试看？"),
                                  actions: <Widget>[
                                    //对话框里面的两个按钮
                                    FlatButton(
                                        onPressed: _usURL,
                                        child: Text("去us改密码")),
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("确定")),
                                  ],
                                );
                              },
                            );
                          }
                        },
                      );
                    }
                  },
                  child: new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Text(
                      '登录',
                      style: new TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Dio dio = new Dio();

// login
Future getUserData(username, password) async {
  Options options = Options(headers: {});
  try {
    Response response = await dio.post(
      'http://us.ncuos.com/api/user/login',
      data: {
        "username": "$username",
        "remember_me": "false",
        "password": "$password"
      },
      options: options,
    );
    // print(response.data);
    // print(response.headers);
    // print(response.statusCode);
    String authorheader = response.headers['authorization'][0];
    UserData userDatas = UserData.fromJson(response.data);
    int b = response.statusCode;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("username", userDatas.username);
    prefs.setString("truename", userDatas.truename);
    prefs.setString("photo", userDatas.photo);
    prefs.setString("password", password);
    prefs.setString("qq", userDatas.qq);
    prefs.setString("role", userDatas.role);
    prefs.setString("studentId", userDatas.studentId);
    prefs.setString("department", userDatas.department);
    prefs.setString("email", userDatas.email);
    prefs.setString("token", authorheader);
    prefs.setString("date_create", userDatas.dateCreate);

    return b;
  } catch (e) {
    return 403;
  }
}

CircularProgressIndicator aaa = CircularProgressIndicator(
  strokeWidth: 4.0,
  backgroundColor: Colors.blue,
  value: 0.2,
  valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
);

_usURL() async {
  const url = 'https://us.ncuhomer.cn';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
