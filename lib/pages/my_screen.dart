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
      body: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.purple,
              padding: const EdgeInsets.all(0.0),
              margin: EdgeInsets.all(0.0),
              height: 190.0,
              width: 750.0,
              child: Container(
                child: UserAccountsDrawerHeader(
                  accountEmail: Container(
                    height: 20,
                    width: 100,
                    margin: EdgeInsets.all(10.0),
                    child: Text('data13212'),
                  ),
                  currentAccountPicture: Container(
                    margin: EdgeInsets.all(0.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://img.isharebest.com/2018041509.jpg'),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
            Container(),
          ],
        )
      ),
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