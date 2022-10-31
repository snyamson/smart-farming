import 'package:flutter/material.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/theme/typography.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class TextInputField extends StatelessWidget {
  final int? textSize;
  const TextInputField({Key? key, this.textSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      cursorColor: const Color(0xFF707070),
      cursorHeight: textSize?.toDouble() ?? 13,
      style: determineTextSize(textSize),
      decoration: InputDecoration(
        hintText: 'Enter Your Mobile Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
          borderSide: const BorderSide(
            color: Color(0xFF707070),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
          borderSide: BorderSide(
            color: AppColors.redColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius10),
          borderSide: const BorderSide(
            color: Color(0xFF707070),
          ),
        ),
      ),
    );
  }

  determineTextSize(int? textSize) {
    switch (textSize) {
      case 12:
        return AppTypography.textRegular12
            .copyWith(color: const Color(0xFF393939));

      case 14:
        return AppTypography.textRegular14
            .copyWith(color: const Color(0xFF393939));

      case 16:
        return AppTypography.textMedium16
            .copyWith(color: const Color(0xFF393939));

      default:
        return AppTypography.textRegular12
            .copyWith(color: const Color(0xFF393939));
    }
  }
}
