import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
//      initialRoute: '/',
//      routes: <String, WidgetBuilder>{
//        '/': (context) => HomePage(),
//        '/second': (context) => SecondHome(),
//      },
//      onUnknownRoute: (RouteSettings settings) {
//        String unknownRoute = settings.name;
//        print(unknownRoute);
//        return MaterialPageRoute(builder: (context) {
//          return NotFoundPage();
//        });
//      },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
//            return MaterialPageRoute(builder: (context) => HomePage());
            return SlideRightRoute(widget: HomePage());
            break;
          case '/second':
//            return MaterialPageRoute(builder: (context) => SecondHome());
            return SlideRightRoute(widget: SecondHome());
            break;
        }
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

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;

  SlideRightRoute({this.widget})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return widget;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
