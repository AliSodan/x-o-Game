import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_colors.dart';
import 'package:tic_tac_toe/core/constants/app_images.dart';
import 'package:tic_tac_toe/core/constants/navigations.dart';
import 'package:tic_tac_toe/core/global_widget/custom_text.dart';
import 'package:tic_tac_toe/core/global_widget/game_map/game_map.dart';
import 'package:tic_tac_toe/core/responsinvness_controller/ratio.dart';

class ChooseMarkScreen extends StatelessWidget {
  const ChooseMarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: Ratio.h(context, height: 0.08)),
        child: _buildPageContent(context),
      ),
    );
  }

  Widget _buildPageContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TextWidget(
          text: 'Choose your Mark',
          fontWeight: FontWeight.w600,
          textColor: AppColors.GOLDY,
          textSize: 20,
        ),
        SizedBox(
          height: Ratio.h(context, height: 0.05),
        ),
        _buildMarksRow(context),
        SizedBox(height: Ratio.h(context, height: 0.1)),
        _buttonsRow(context)
      ],
    );
  }

  Widget _buildMarksRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: Ratio.w(context, width: 0.08)),
          child: Container(
            height: Ratio.h(context, height: 0.2),
            width: Ratio.w(context, width: 0.4),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: Ratio.w(
                  context,
                  width: 0.005,
                ),
              ),
            ),
            child: _buildImage(imagePath: AppImages.O),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: Ratio.w(context, width: 0.081),
          ),
          child: Container(
            height: Ratio.h(context, height: 0.2),
            width: Ratio.w(context, width: 0.4),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: Ratio.w(
                  context,
                  width: 0.005,
                ),
              ),
            ),
            child: _buildImage(imagePath: AppImages.X),
          ),
        ),
      ],
    );
  }

  Widget _buildImage({required imagePath}) {
    return Image.asset(
      imagePath,
      fit: BoxFit.fill,
    );
  }

  Widget _buttonsRow(
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _difficultyLevelButton(
          context,
          buttonText: 'Eazy',
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GameMap()));
          },
        ),
        _difficultyLevelButton(
          context,
          buttonText: 'Medium',
          onPressed: () {},
        ),
        _difficultyLevelButton(
          context,
          buttonText: 'Hard',
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _difficultyLevelButton(BuildContext context,
      {required String buttonText, required void Function() onPressed}) {
    return BouncingWidget(
        child: Container(
          height: Ratio.h(context, height: 0.09),
          width: Ratio.w(context, width: 0.2),
          decoration: const BoxDecoration(
              color: AppColors.GOLDY,
              borderRadius: BorderRadius.all(Radius.circular(400))),
          child: Center(
              child: TextWidget(
            text: buttonText,
            fontWeight: FontWeight.w500,
            textColor: Colors.black,
            textSize: 18,
          )),
        ),
        onPressed: onPressed);
  }
}
