import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 10),
      body: Container(
        color: Colors.purple,
        padding: const EdgeInsets.all(0.0),
        height: 250.0,
        width: 750.0,
        child: Stack(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('data'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://img.isharebest.com/2018041509.jpg'),
              ),
            )
          ],
          // padding: const EdgeInsets.fromLTRB(80, 150, 80, 50),
          // padding: EdgeInsets.all(50),
          // margin: EdgeInsets.all(50),
          // child: CircleAvatar(
          //   radius: 36.0,
          //   //borderRadius: BorderRadius.circular(100.0),
          //   child: new Image.network(
          //   'https://img.isharebest.com/2018041509.jpg',
          //   fit: BoxFit.cover,
          //   )
          // ),
          // height: 80.0,
          // width: 80.0,
        ),
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