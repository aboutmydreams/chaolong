import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var MyImg = new Stack(children: <Widget>[
      CircleAvatar(
        
      )
    ],);

    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 10),
      body: SizedBox(
        // height: 220,
        child: new Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0.0,
                right: 0.0,
                top: 0.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 80),
                      margin: EdgeInsets.all(0),
                      alignment: Alignment.bottomCenter,
                      height: 250,
                      width: 430,
                      color: Colors.blue,
                      child: ClipOval(
                        child: Image.network(
                          'https://cdn.nlark.com/yuque/0/2018/png/164272/1540470801359-2440731a-e0c0-4608-8dfc-c48bb2bc8cea.png?x-oss-process=image/resize,m_fill,w_192,h_192/format,png',
                          height: 80, 
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                alignment: Alignment.topCenter,
                child: FlatButton(
                  child: Text(
                    "登录",
                    style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w500),
                  ),
                  onPressed: (){},
                )
              ),
              Positioned(
                top: 150.0,
                child:Container(
                  child: Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Container(
                          width: 205,
                          height: 180,
                          color: Colors.green,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Container(
                          width: 205,
                          height: 180,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
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