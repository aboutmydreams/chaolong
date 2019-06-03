import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 10),
        body: SizedBox(
          // height: 220,
          child: new Center(
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(0, 80, 0, 20),
                    margin: EdgeInsets.all(0),
                    alignment: Alignment.bottomCenter,
                    height: 250,
                    width: 430,
                    color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        ClipOval(
                          child: Image.network(
                            'https://cdn.nlark.com/yuque/0/2018/png/164272/1540470801359-2440731a-e0c0-4608-8dfc-c48bb2bc8cea.png?x-oss-process=image/resize,m_fill,w_192,h_192/format,png',
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          alignment: Alignment.topCenter,
                          child: FlatButton(
                            child: Text(
                              "登录",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          '关于我们',
                          textAlign: TextAlign.left,
                        ),
                        leading: Icon(Icons.leak_add,
                            color: Colors.black26, size: 22.0),
                        onTap: () => Navigator.pushNamed(context, "/aboutus"),
                      ),
                      Divider(
                        height: 1,
                      ),
                      ListTile(
                        title: Text(
                          '设置',
                          textAlign: TextAlign.left,
                        ),
                        leading: Icon(Icons.settings,
                            color: Colors.black26, size: 22.0),
                        onTap: () => Navigator.pushNamed(context, "/setting"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// Material(
//       borderRadius: BorderRadius.circular(20.0),
//       shadowColor: Colors.blue.shade200,
//       elevation: 0.0,
//       child: new MaterialButton(
//       onPressed: (){},
//       minWidth: 750.0,
//       height: 250.0,
//       color: Colors.blue,
//       child:Text('Buy Now'),

//       ),
//     );
