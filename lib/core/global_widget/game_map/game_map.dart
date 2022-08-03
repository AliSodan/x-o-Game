import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/global_widget/game_map/map_shape.dart';
import 'package:tic_tac_toe/core/responsinvness_controller/ratio.dart';

class GameMap extends StatefulWidget {
  const GameMap({Key? key}) : super(key: key);

  @override
  State<GameMap> createState() => _GameMapState();
}

class _GameMapState extends State<GameMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageContent(context),
    );
  }

  Widget _pageContent(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Ratio.h(context, height: 0.13),),
        MapShape()
      ],
    );
  }
}
