import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Second home'),
          onPressed: () {
//            Route route = MaterialPageRoute(builder: (context) {
//              return SecondHome();
//            });
//            Navigator.push(context, route);
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}
