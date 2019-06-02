import 'package:flutter/material.dart';

class MySlide extends MaterialPageRoute {
  MySlide({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> custom =
        Tween<Offset>(begin: Offset(1.0, 1.0), end: Offset(0.0, 0.0))
            .animate(animation);
//    return super
//        .buildTransitions(context, animation, secondaryAnimation, child);
    return SlideTransition(position: custom, child: child);
  }
}

//class SlideRightRoute extends PageRouteBuilder {
//  final Widget widget;
//
//  SlideRightRoute({this.widget})
//      : super(
//          pageBuilder: (
//            BuildContext context,
//            Animation<double> animation,
//            Animation<double> secondaryAnimation,
//          ) {
//            return widget;
//          },
//          transitionsBuilder: (
//            BuildContext context,
//            Animation<double> animation,
//            Animation<double> secondaryAnimation,
//            Widget child,
//          ) {
//            return SlideTransition(
//              position: Tween<Offset>(
//                begin: const Offset(1.0, 0.0),
//                end: Offset.zero,
//              ).animate(animation),
//              child: child,
//            );
//          },
//        );
//}
