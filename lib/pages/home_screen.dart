import 'package:flutter/material.dart';
import 'kemu/kemu2.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: TabBar(
            unselectedLabelColor: Colors.white54,
            labelColor: Colors.yellow,
            indicatorColor: Colors.yellow[300],
            indicatorSize: TabBarIndicatorSize.label,
            // indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(text: '科一', icon: Icon(Icons.local_florist)),
              Tab(text: '科二', icon: Icon(Icons.change_history)),
              Tab(text: '科三', icon: Icon(Icons.directions_bike)),
              Tab(text: '科四', icon: Icon(Icons.view_quilt)),
            ],
          ),
          // textTheme:TextTheme(),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     tooltip: 'Search',
          //     onPressed: () => debugPrint('Search button is pressed.'),
          //   )
          // ],
          // elevation: 0.0,
          // bottom: TabBar(),
        ),
        body: TabBarView(
          children: <Widget>[
            //ListViewDemo(),
            Container(
              child: Text('data1'),
            ),
            Kemu2Page(),
            Container(
              child: Text('data3'),
            ),
            Container(
              child: Text('data4'),
            ),
            // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            //BasicDemo(),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            //LayoutDemo(),
            //SliverDemo(),
          ],
        ),
        // drawer: DrawerDemo(),
        // bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

class Kemu {
  var k1 = new Container();
  var k2 = new Container();
  var k3 = new Container();
  var k4 = new Container();
}
