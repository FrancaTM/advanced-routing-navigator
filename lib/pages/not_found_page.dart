import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Not Found'),
      ),
      body: Center(
        child: Text('404'),
      ),
    );
  }
}
