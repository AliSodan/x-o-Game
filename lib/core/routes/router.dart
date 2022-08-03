import 'package:flutter/material.dart';
import 'package:tic_tac_toe/choose_mark.dart';
import 'package:tic_tac_toe/choose_yourgame.dart';
import 'package:tic_tac_toe/core/routes/routes.dart';
import 'package:tic_tac_toe/core/transition/right_to_left_transition.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.CHOOSE_YOUR_GAME:
        return RightToLeftTransition(screen: const ChooseYourGame());
      case Routes.CHOOSE_YOUR_MARK:
        return RightToLeftTransition(screen: const ChooseMarkScreen());
    }
  }
}
