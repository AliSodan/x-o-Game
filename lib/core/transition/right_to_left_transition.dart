import 'package:flutter/cupertino.dart';

class RightToLeftTransition extends PageRouteBuilder {
  Widget screen;

  RightToLeftTransition({required this.screen})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => screen,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const Offset begin = Offset(1, 0);
            const Offset end = Offset(0, 0);
            final  tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation,
            child: child,
            );
          },
        );
}
