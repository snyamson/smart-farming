import 'package:flutter/material.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class FullWidthButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const FullWidthButton(
      {required this.label, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
        ),
        minimumSize: Size.fromHeight(Dimensions.height52),
      ),
      child: Text(
        label,
        style: AppTypography.textMedium14,
      ),
    );
  }
}
