import 'package:flutter/material.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';

import '../../../../utils/constants/dimensions.dart';

class OnboardingButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const OnboardingButton(
      {required this.label, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius5),
        ),
        fixedSize: Size(
          Dimensions.onBoardingButtonWidth,
          Dimensions.onBoardingButtonHeight,
        ),
      ),
      child: Text(
        label,
        style: AppTypography.textMedium14,
      ),
    );
  }
}
