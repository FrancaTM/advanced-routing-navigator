import 'package:flutter/material.dart';

class SecondHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('go back'),
          onPressed: () {
            Navigator.pop(context);
//            Navigator.pushNamed(context, '/404');
          },
        ),
      ),
    );
  }
}
