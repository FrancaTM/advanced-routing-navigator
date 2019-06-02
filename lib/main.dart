import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
//      home: SecondHome(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        '/second': (context) => SecondHome(),
      },
      onUnknownRoute: (RouteSettings settings) {
        String unknownRoute = settings.name;
        print(unknownRoute);
        return MaterialPageRoute(builder: (context) {
          return NotFoundPage();
        });
      },
    ),
  );
}

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
