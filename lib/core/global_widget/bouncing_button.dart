import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/app_colors.dart';
import 'package:tic_tac_toe/core/global_widget/custom_text.dart';
import 'package:tic_tac_toe/core/responsinvness_controller/ratio.dart';

class BouncingButton extends StatelessWidget {
  const BouncingButton(
      {Key? key, required this.onPressed, required this.buttonText})
      : super(key: key);

  final void Function() onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Ratio.h(context, height: 0.061),
      width: Ratio.w(context, width: 0.6),
      child: Center(
        child: BouncingWidget(
          duration: const Duration(milliseconds: 150),
          scaleFactor: 1.5,
          onPressed: onPressed,
          child: Card(
            color: AppColors.GOLDY,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(400),
              ),
            ),
            shadowColor: AppColors.GOLDY,
            child: Center(
              child: TextWidget(
                text: buttonText,
                textColor: Colors.black,
                fontWeight: FontWeight.w600,
                textSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
