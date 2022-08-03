import 'package:flutter/material.dart';

class GoTo {
  static Future named(BuildContext context, {required String routeName}) {
    return Navigator.of(context).pushNamed(routeName);
  }

  static  returnBack(BuildContext context) {
    return Navigator.of(context).pop();
  }


}
