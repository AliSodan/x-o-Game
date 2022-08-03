import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_colors.dart';
import 'package:tic_tac_toe/core/constants/navigations.dart';
import 'package:tic_tac_toe/core/global_widget/bouncing_button.dart';
import 'package:tic_tac_toe/core/global_widget/custom_text.dart';
import 'package:tic_tac_toe/core/responsinvness_controller/ratio.dart';
import 'package:tic_tac_toe/core/routes/routes.dart';

class ChooseYourGame extends StatelessWidget {
  const ChooseYourGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Ratio.h(
            context,
            height: 0.15,
          ),
          horizontal: Ratio.w(
            context,
            width: 0.19,
          ),
        ),
        child: _buildPageContent(context),
      ),
    );
  }

  Widget _buildPageContent(BuildContext context) {
    return Column(
      children: [
        const TextWidget(
          text: 'Tic Tac Toe Game',
          fontWeight: FontWeight.w600,
          textColor: AppColors.GOLDY,
          textSize: 28,
        ),
        //TODO here i will add some complex animations between the buttons and the title
        SizedBox(
          height: Ratio.h(context, height: 0.4),
        ),
        BouncingButton(
          onPressed: () {
            GoTo.named(context, routeName: Routes.CHOOSE_YOUR_MARK);
          },
          buttonText: 'VS computer',
        ),
        SizedBox(
          height: Ratio.h(context, height: 0.05),
        ),
        BouncingButton(
          onPressed: () {
            GoTo.named(context, routeName: Routes.CHOOSE_YOUR_MARK);
          },
          buttonText: 'VS a friend',
        ),
      ],
    );
  }
}
