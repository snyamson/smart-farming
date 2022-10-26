import 'package:flutter/material.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class SmallButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const SmallButton({required this.label, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: AppColors.primaryColorDeep,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius5),
        ),
        fixedSize:
            Size(Dimensions.smallButtonWidth, Dimensions.smallButtonHeight),
      ),
      child: Text(
        label,
        style: AppTypography.textMedium14,
      ),
    );
  }
}
