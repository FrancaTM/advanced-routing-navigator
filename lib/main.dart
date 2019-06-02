import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/second_page.dart';
import 'utils/my_slide.dart';

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
            return MaterialPageRoute(builder: (context) => HomePage());
//            return SlideRightRoute(widget: HomePage());
            break;
          case '/second':
            return MySlideDuration(widget: SecondHome());
//            return MySlide(builder: (context) => SecondHome());
//            return SlideRightRoute(widget: SecondHome());
            break;
        }
      },
    ),
  );
}
