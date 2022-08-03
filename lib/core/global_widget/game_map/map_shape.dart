import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/responsinvness_controller/ratio.dart';

class MapShape extends StatefulWidget {
  const MapShape({Key? key}) : super(key: key);

  @override
  State<MapShape> createState() => _MapShapeState();
}

class _MapShapeState extends State<MapShape> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        height: Ratio.h(context, height: 0.41),
        width: Ratio.w(context, width: 1),
        child: Column());
  }
}
