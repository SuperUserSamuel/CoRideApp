
import 'package:flutter/material.dart';


void navigateTo({required BuildContext context, required Widget myChild}) {
  Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
        myChild,
        transitionDuration: const Duration(milliseconds: 500),
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) {
          var begin = const Offset(1.0, 0.0);
          var end = const Offset(0, 0);
          var curve = Curves.easeOutCubic;

          var tween = Tween(begin: begin, end: end)
              .chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ));
}