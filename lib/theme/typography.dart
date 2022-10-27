import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_farming/theme/app_colors.dart';
import 'package:smart_farming/utils/constants/dimensions.dart';

class AppTypography {
  static TextStyle textBold26 = GoogleFonts.poppins(
    fontSize: Dimensions.font26,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textSemiBold20 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.onboardingTitleTextColor,
  );

  static TextStyle textStyle18 = GoogleFonts.poppins(
    fontSize: Dimensions.font18,
  );

  static TextStyle textSemiBold16 = GoogleFonts.poppins(
    fontSize: Dimensions.font16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textMedium16 = GoogleFonts.poppins(
    fontSize: Dimensions.font16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textRegular15 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColors.onboardingDescTextColor,
  );

  static TextStyle textRegular14 = GoogleFonts.poppins(
    fontSize: Dimensions.font14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textMedium14 = GoogleFonts.poppins(
    fontSize: Dimensions.font14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle12 = GoogleFonts.poppins(
    fontSize: Dimensions.font12,
  );

  static TextStyle textSemiBold12 = GoogleFonts.poppins(
    fontSize: Dimensions.font12,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textRegular10 = GoogleFonts.poppins(
    fontSize: Dimensions.font10,
  );
}
