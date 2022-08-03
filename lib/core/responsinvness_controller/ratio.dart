import 'package:flutter/material.dart';

class Ratio {
  static h(BuildContext context,{required double height}) {
    return MediaQuery.of(context).size.height * height;
  }
  
  static w(BuildContext context,{required double width}) {
    return MediaQuery.of(context).size.width *width;
  }
}
